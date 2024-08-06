package Tmember;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import util.JDBCUtil;

public class TmemberDAO {
	// JDBC 관련 변수 
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private String Tmember_list = "select * from Tmember"; //회원목록 조회
	private String Tmember_ID = "select * from Tmember where ID = ? and pd=?"; //아이디로그인
	private String Tmember_INSERT = "insert into Tmember(name, tel, id, pd) values(?,?,?,?)"; 
//	private String BOARD_UPDATE="update Tmember set name=?, tel=?, id=?, pd=?"; //회원정보 수정
//	private String BOARD_DELETE="delete from board where num=?"; //회원삭제
//	
	//회원목록조회
	public List<TmemberDTO> getmemberList() {
		List<TmemberDTO> list = new ArrayList<>();
		
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(Tmember_list);
			rs = stmt.executeQuery();
			while (rs.next()) {
				TmemberDTO dto = new TmemberDTO(rs.getInt("bnum"), rs.getString("name"),
						rs.getString("tel"), rs.getString("id"),
						rs.getString("pd"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		
		return list;
	}
	
	public boolean checkLogin(String id, String pd) {
		boolean A=false;
    	conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(Tmember_ID);
			stmt.setString(1, id);
			stmt.setString(2, pd);
			rs = stmt.executeQuery();
			
			if (rs.next()) {
				String name=rs.getString("name");
				System.out.println(name);
				return true;
	        }
			

		
			
		}catch (SQLException e) {
				e.printStackTrace();
			} finally {
				JDBCUtil.close(stmt, conn);
			}
		return false;
    }
	
	public void insertBoard(TmemberDTO dto) {
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(Tmember_INSERT);
			stmt.setString(1, dto.getName());
			stmt.setString(2, dto.getTel());
			stmt.setString(3, dto.getId());
			stmt.setString(4, dto.getPd());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
		
		
	}
	








