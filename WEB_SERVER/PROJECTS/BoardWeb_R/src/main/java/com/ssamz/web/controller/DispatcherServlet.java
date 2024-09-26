package com.ssamz.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssamz.biz.board.BoardDAO;
import com.ssamz.biz.board.BoardVO;
import com.ssamz.biz.user.UserDAO;
import com.ssamz.biz.user.UserVO;

/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private HandlerMapping handlerMapping;
	private ViewResolver viewResolver;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub

//		/board/A.jsp
//		/board/B.jsp
//		/board/C.jsp
		//
//		prefix : /board/
//		viewName : A
//		suffix : .jsp
		//
//		prefix  + viewName + suffix = /board/A.jsp

		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();

		viewResolver.setPrefix("./WEB-INF/board/");
		viewResolver.setSuffix(".jsp");
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 1. 사용자 요청 path를 추출합니다.
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));

		// 2.handlerMapping을 통해 path에 해당하는 Controller를 검색한다.
		Controller ctrl = handlerMapping.getController(path);

		// 3. 검색된 Controller를 실행한다.
		String viewName = ctrl.handleRequest(request, response);

		// 4 ViewResolver를 통해 viewName에 해당하는 경로를 완성한다.
		String view = null;
		if (!viewName.contains(".do")) {
			if (viewName.equals("index")) {
				view = viewName + ".jsp";
			}
			else {
				view = viewResolver.getView(viewName);
			}
		} else {
			view = viewName;
		}
		
		// 5. 검색된 화면으로 포워딩 한다.
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	}

}
