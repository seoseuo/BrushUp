package com.ssamz.web.controller.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssamz.biz.board.BoardDAO;
import com.ssamz.biz.board.BoardVO;
import com.ssamz.web.controller.Controller;

public class GetBoardListController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("글 목록 검색 처리");
		
		// 1. 사용자 입력 정보 추출
		String searchCondition = request.getParameter("searchCondition");
		String searchKeyword = request.getParameter("searchKeyword");
		
		// Null Check
		if (searchCondition == null) {
			searchCondition = "TITLE";
		}
		
		if (searchKeyword == null) {
			searchKeyword = "";
		}
		
		// 세션에 검색 관련 정보를 저장합니다.
		HttpSession session = request.getSession();
		session.setAttribute("condition", searchCondition);
		session.setAttribute("keyword", searchKeyword);
		
		// 2. DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setSearchCondition(searchCondition);
		vo.setSearchKeyword(searchKeyword);
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> boardList = dao.getBoardList(vo);
		
		// 3. 화면 이동
		request.setAttribute("boardList", boardList);
		return "getBoardList";
	}

}
