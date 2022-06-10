package com.asm.dao;

import java.util.List;

import com.asm.entity.SanPham;

public abstract class DAO<E,K> {
    public abstract void insert(E entity);
    public abstract void update(E entity);
    public abstract void delete(K key);
    public abstract E selectById(K key);
    public abstract List<E> selectAll();
}
