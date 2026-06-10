package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory.dto.PostDTO;
import kr.co.farmstory.sql.PostSQL;
import kr.co.farmstory.util.ConnectionProvider;

public class PostDAO {
	private static PostDAO instance = new PostDAO();
	private PostDAO() {}
	public static PostDAO getInstance() { return instance; }
	
	public PostDTO select(String id) {
		// 반환용 DTO
		PostDTO dto = null;
		
		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.SELECT_POST)) {
			psmt.setString(1, id);
			
			try(ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					dto = new PostDTO();
					dto.setId(rs.getInt(1));
					dto.setWriterId(rs.getString(2));
					dto.setCategory(rs.getString(3));
					dto.setTitle(rs.getString(4));
					dto.setContent(rs.getString(5));
					dto.setViewCount(rs.getInt(6));
					dto.setIpAddress(rs.getString(7));
					dto.setWrittenAt(rs.getString(8));
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	// 글쓰기
	public int insert(PostDTO dto) {
		int postId = 0;

		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(
					PostSQL.INSERT_POST,
					Statement.RETURN_GENERATED_KEYS)) {
			psmt.setString(1, dto.getWriterId());
			psmt.setString(2, dto.getCategory());
			psmt.setString(3, dto.getTitle());
			psmt.setString(4, dto.getContent());
			psmt.setString(5, dto.getIpAddress());
			psmt.executeUpdate();
			
			try (ResultSet rs = psmt.getGeneratedKeys()) {
				if (rs.next()) {
					postId = rs.getInt(1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return postId;
	}
	
	// 조회수 증가
	public void updateViewCount(String id) {
		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.INCREASE_VIEW_COUNT)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 글수정	
	public void update(PostDTO dto) {
		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.UPDATE_POST)) {
			psmt.setString(1, dto.getTitle());
			psmt.setString(2,  dto.getContent());
			psmt.setInt(3, dto.getId());
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 글삭제
	public void delete(String id) {
		try(Connection conn = ConnectionProvider.getConnection();
			PreparedStatement psmt = conn.prepareStatement(PostSQL.DELETE_POST)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
