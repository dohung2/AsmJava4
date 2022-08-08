package com.asm.util;

import javax.servlet.http.HttpServletRequest;

public class XSession {

	public static HttpServletRequest request() {
		return RRSharer.request();
	}

	public static void invalidate() {
		request().getSession().invalidate();
	}
}
