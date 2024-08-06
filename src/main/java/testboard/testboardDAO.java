package testboard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import util.JDBCUtil;

public class testboardDAO {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private String testboard_list="select * from testboard";
	private String testboard_insert = "insert into testboard(writer, title, content, regtime) values(?,?,?,now())"; 
	private String testboard_one = "select * from testboard where num = ?";
	private String testboard_update="update testboard set writer=?, title=?, content=?, regtime=now() where num=?";
	private String testboard_delete="delete from testboard where num=?";
	//게시판 삽입
	public void insertBoard(testboardDTO dto) {
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(testboard_insert);
			stmt.setString(1, dto.getWriter());
			stmt.setString(2, dto.getTitle());
			stmt.setString(3, dto.getContent());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	//게시판 목록
	public List<testboardDTO> getBoardList() {
		List<testboardDTO> list = new ArrayList<>();
		
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(testboard_list);
			rs = stmt.executeQuery();
			while (rs.next()) {
				testboardDTO dto = new testboardDTO(rs.getInt("num"), rs.getString("title"),
						rs.getString("writer"), rs.getString("content"),
						rs.getString("regtime"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		
		return list;
	}
	//글선택
	public testboardDTO getOne(int num) {
		testboardDTO dto = null;
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(testboard_one);
			stmt.setInt(1, num);
			rs = stmt.executeQuery();
			if (rs.next()) {
				dto = new testboardDTO(rs.getInt("num"), rs.getString("writer"),
						rs.getString("title"), rs.getString("content"),
						rs.getString("regtime"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return dto;
	}
	//글삭제
	public void deletetestboard(int num) {
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(testboard_delete);
		    stmt.setInt(1, num);
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	//내용업데이트
	public void updateBoard(testboardDTO dto) {
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(testboard_update);
			stmt.setString(1, dto.getWriter());
			stmt.setString(2, dto.getTitle());
			stmt.setString(3, dto.getContent());
			stmt.setInt(4, dto.getNum());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}

}
