package com.asm.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.asm.dao.GioHangDAO;
import com.asm.dao.NguoiDungDAO;
import com.asm.dao.SanPhamDAO;
import com.asm.dto.GioHangChiTietDTO;
import com.asm.dto.GioHangDTO;
import com.asm.entity.DonDatHang;
import com.asm.entity.DonHangChiTiet;
import com.asm.entity.NguoiDung;
import com.asm.entity.SanPham;

public class GioHangService {
	
	SanPhamDAO spDAO = new SanPhamDAO();
	NguoiDungDAO ndDAO = new NguoiDungDAO();
	GioHangDAO ghDAO = new GioHangDAO();
	
	public boolean checkBeforeInsert(GioHangDTO gh) {
		// kiem tra cart co ton tai sp hay khong, neu khong ton tai thi ko insert
		if (gh.getTongsl() == 0) {
			return false;
		}
		return insertHoaDon(gh);
	}
	
	public boolean insertHoaDon(GioHangDTO ghDTO) {
		DonDatHang donDatHang = mappingDtoToOrderEntity(ghDTO);
		List<DonHangChiTiet> listDHCT = mappingDtoToOrderDetailEntity(ghDTO.getDetail(), donDatHang);
		return ghDAO.insertCart(donDatHang, listDHCT);
	}
	
	public GioHangDTO updateCart(GioHangDTO gh, String masp, int soLuong, boolean isUpdate) {
		SanPham sp = spDAO.selectById(masp);
		
		HashMap<String, GioHangChiTietDTO> gioHangChiTiet = gh.getDetail();
		
		if (gioHangChiTiet.containsKey(masp)) {
			if (soLuong < 1) {
				gioHangChiTiet.remove(masp);
			} else {
				if (isUpdate) {
					gioHangChiTiet.get(masp).setSlMua(soLuong);
				} else {
					int slCu = gioHangChiTiet.get(masp).getSlMua();
					gioHangChiTiet.get(masp).setSlMua(slCu + soLuong);
				}
			}
		} else {
			GioHangChiTietDTO gioHangCTDTO = new GioHangChiTietDTO();
			gioHangCTDTO.setTenSP(sp.getTenSP());
			gioHangCTDTO.setGiaSP(sp.getGia());
			gioHangCTDTO.setMaSP(sp.getId_SP());
			gioHangCTDTO.setHinh(sp.getAnh());
			gioHangCTDTO.setSlMua(soLuong);
			gioHangChiTiet.put(masp, gioHangCTDTO);
		}
		
		gh.setTongsl(this.getTongSL(gh));
		gh.setTongtien(this.getTongTien(gh));
		
		return gh;
	}
	
	public double getTongTien(GioHangDTO gh) {
		HashMap<String, GioHangChiTietDTO> gioHangChiTiet = gh.getDetail();
		Double tongTien = 0D;
		for (GioHangChiTietDTO gioHangCTDTO : gioHangChiTiet.values()) {
			SanPham sp = spDAO.selectById(gioHangCTDTO.getMaSP());
			tongTien += sp.getGia() * gioHangCTDTO.getSlMua();
		}
		return tongTien;
	}
	
	public int getTongSL(GioHangDTO gh) {
		HashMap<String, GioHangChiTietDTO> gioHangChiTiet = gh.getDetail();
		int tongSL = 0;
		for (GioHangChiTietDTO gioHangCTDTO : gioHangChiTiet.values()) {
			tongSL += gioHangCTDTO.getSlMua();
		}
		return tongSL;
	}
	
	private DonDatHang mappingDtoToOrderEntity(GioHangDTO ghDTO) {
		DonDatHang donDatHang = new DonDatHang();
		donDatHang.setDiaChi(ghDTO.getDiachi());
		donDatHang.setSoDT(ghDTO.getDienthoai());
		donDatHang.setTongTien(ghDTO.getTongtien());
		NguoiDung nd = ndDAO.selectById(ghDTO.getId_ND());
		donDatHang.setNguoiDung(nd);
		return donDatHang;
	}
	
	private List<DonHangChiTiet> mappingDtoToOrderDetailEntity(HashMap<String, GioHangChiTietDTO> details, DonDatHang donDatHang) {
		List<DonHangChiTiet> result = new ArrayList<>();
		details.forEach((key, dhct) -> {
			DonHangChiTiet donHangChiTiet = new DonHangChiTiet();
			SanPham sanPham = spDAO.selectById(dhct.getMaSP());
			donHangChiTiet.setSanPham(sanPham);
			donHangChiTiet.setGia(dhct.getGiaSP());
			donHangChiTiet.setSoLuong(dhct.getSlMua());
			donHangChiTiet.setDonDatHang(donDatHang);
			result.add(donHangChiTiet);
		});
		return result;
	}
}
