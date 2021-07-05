package com.company.exer.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.company.exer.HomeController;

//로그인 인터셉터
public class AuthLoginInterceptor extends HandlerInterceptorAdapter {

	// 컨트롤러 이전에 실행되는 메소드
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session = request.getSession();

		Object obj = session.getAttribute("login");
		String path = (String) request.getRequestURI();
		System.out.println(obj);
		// 로그인 정보가 없으면 로그인 화면으로 리다이렉트
		if (obj == null && !path.equals("/Member/Login.do")) {
			response.sendRedirect("/Member/Login.do");
			return false;
		}
		
		// 로그인 정보가 있으면 컨트롤러로 보냄
		return true;
	}

	// 컨트롤러 이후에 실행되는 메소드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
}
