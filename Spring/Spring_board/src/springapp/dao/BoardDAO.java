package springapp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import springapp.vo.BoardVO;

@Repository
public class BoardDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;// template 안에 메소드 다 있음

	public List<BoardVO> selectBoardList() {
		// TODO Auto-generated method stub

		String sql = "SELECT * FROM board ORDER BY seq DESC";

		// 테이블에서 조회한 각 레코드들을 vo 객체에 매핑하는 방법을 정의하는 인터페이스
		// <> 안에는 타입이 들어감 - 어떤 타입을 변환할 것인지
		RowMapper<BoardVO> mapper = new RowMapper<BoardVO>() {

			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {// resultset, 행번호
				// TODO Auto-generated method stub

				BoardVO boardVO = new BoardVO();
				boardVO.setContet(rs.getString("content"));
				boardVO.setHitcount(rs.getInt("hitcount")); // 조회수
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setSeq(rs.getInt("seq"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setWriter(rs.getString("writer"));
				return boardVO;
			}

		};

		List<BoardVO> boardList = jdbcTemplate.query(sql, mapper);
		return boardList;

	}

	public void insertArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO board(seq, title, content, writer, regdate, hitcount)"
				+ " VALUES(board_seq.nextval,?,?,?,sysdate,0)";
		
		Object[] values = new Object[] {boardVO.getTitle(),boardVO.getContet(),boardVO.getWriter()};
		jdbcTemplate.update(sql,values);
		
	}

	public BoardVO selectBoardVO(int seq) {
		// TODO Auto-generated method stub
		
		String sql = "SELECT * FROM board WHERE seq = ?";
		
		Object[] values = new Object[] {seq};
		
		RowMapper<BoardVO> mapper = new RowMapper<BoardVO>() {

			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {// resultset, 행번호
				// TODO Auto-generated method stub

				BoardVO boardVO = new BoardVO();
				boardVO.setContet(rs.getString("content"));
				boardVO.setHitcount(rs.getInt("hitcount")); // 조회수
				boardVO.setRegdate(rs.getString("regdate"));
				boardVO.setSeq(rs.getInt("seq"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setWriter(rs.getString("writer"));
				return boardVO;
			}

		};
		
		BoardVO boardVO = jdbcTemplate.queryForObject(sql, values, mapper);
		
		
		return boardVO;
	}

	public void updateArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		String sql = "UPDATE board SET "
				+ " VALUES(board_seq.nextval,?,?,?,sysdate,0)";
		
		Object[] values = new Object[] {boardVO.getTitle(),boardVO.getContet(),boardVO.getWriter()};
		jdbcTemplate.update(sql,values);
	}

}
