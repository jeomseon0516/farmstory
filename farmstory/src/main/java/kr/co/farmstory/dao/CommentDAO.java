package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import kr.co.farmstory.dto.CommentDTO;
import kr.co.farmstory.sql.CommentSQL;
import kr.co.farmstory.util.ConnectionProvider;

public class CommentDAO {

	private static CommentDAO instance = new CommentDAO();

	public static CommentDAO getInstance() {
		return instance;
	}

	private CommentDAO() {
	}

	public CommentDTO select(String id) {
		CommentDTO dto = null;

		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(CommentSQL.SELECT_COMMENT)) {
			psmt.setString(1, id);

			try (ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					dto = new CommentDTO();
					dto.setId(rs.getInt(1));
					dto.setPostId(rs.getInt(2));
					dto.setWriterId(rs.getString(3));
					dto.setIpAddress(rs.getString(4));
					dto.setWrittenAt(rs.getString(5));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public List<CommentDTO> selectAll(String postId) {
		List<CommentDTO> dtoList = null;

		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(CommentSQL.SELECT_ALL_COMMENT)) {
			psmt.setString(1, postId);

			try (ResultSet rs = psmt.executeQuery()) {
				while (rs.next()) {
					CommentDTO dto = new CommentDTO();
					dto.setId(rs.getInt(1));
					dto.setPostId(rs.getInt(2));
					dto.setWriterId(rs.getString(3));
					dto.setIpAddress(rs.getString(4));
					dto.setWrittenAt(rs.getString(5));
					dto.setNickname(rs.getString(6));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}

	public void insert(CommentDTO dto) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(CommentSQL.INSERT_COMMENT)) {
			psmt.setInt(1, dto.getPostId());
			psmt.setString(2, dto.getWriterId());
			psmt.setString(3, dto.getContent());
			psmt.setString(4, dto.getIpAddress());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void update(CommentDTO dto) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(CommentSQL.UPDATE_COMMENT)) {
			psmt.setString(1, dto.getContent());
			psmt.setInt(2, dto.getId());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void delete(String id) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(CommentSQL.DELETE_COMMENT)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
