package com.ssamz.biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ssamz.biz.common.JDBCUtil;

// DAO(Data Access Object) 클래스
public class BoardDAO {

	// JDBC 관련 변수
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;

	// SQL 명령어
	// 게시글 목록 가져오기
	private static String BOARD_LIST = "select * from board order by seq desc";

	// 게시글 등록하기
	private static String BOARD_INSERT = "insert into board(seq, title, writer, content) values((select nvl(max(seq), 0) + 1  from board), ?, ?, ?)";

	// 게시글 상세보기
	private static String BOARD_GET = "select * from board where seq = ?";

	//

	// 글 목록 검색
	public List<BoardVO> getBoardList(BoardVO vo) {
		// TODO Auto-generated method stub
		// System.out.println("---> 글 목록 검색 수행중...");

		List<BoardVO> boardList = new ArrayList<BoardVO>();

		try {

			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_LIST);

			rs = stmt.executeQuery();

			while (rs.next()) {

				BoardVO board = new BoardVO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));

				boardList.add(board);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}

		return boardList;
	}

	// 글 등록
	public void insertBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		System.out.println("---> 글 등록 수행중...");

		conn = JDBCUtil.getConnection();

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_INSERT);

			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getWriter());
			stmt.setString(3, vo.getContent());
			stmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

	// 글 상세 조회
	public BoardVO getBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		BoardVO board = null;

		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(BOARD_GET);

			stmt.setInt(1, vo.getSeq());
			rs = stmt.executeQuery();

			if (rs.next()) {
				board = new BoardVO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
				System.out.println(vo.getSeq());
				System.out.println(board.getSeq());
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}

		return board;
	}

}
