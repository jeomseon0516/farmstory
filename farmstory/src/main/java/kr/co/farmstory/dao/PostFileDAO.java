package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.PostFileDTO;
import kr.co.farmstory.sql.PostFileSQL;
import kr.co.farmstory.util.ConnectionProvider;

public enum PostFileDAO {
	INSTANCE;

	public List<PostFileDTO> selectByPostId(String postId) {

		List<PostFileDTO> dtoList = new ArrayList<>();

		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(PostFileSQL.SELECT_BY_POST_ID)) {

			psmt.setString(1, postId);

			try (ResultSet rs = psmt.executeQuery()) {
				while (rs.next()) {
					PostFileDTO dto = new PostFileDTO();
					dto.setId(rs.getInt(1));
					dto.setPostId(rs.getInt(2));
					dto.setFileId(rs.getInt(3));
					dto.setDownloadCount(rs.getInt(4));
					dtoList.add(dto);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dtoList;
	}

	public void insert(PostFileDTO dto) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(PostFileSQL.INSERT)) {
			psmt.setInt(1, dto.getPostId());
			psmt.setInt(2, dto.getFileId());
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteByPostId(String postId) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(PostFileSQL.DELETE_BY_POST_ID)) {

			psmt.setString(1, postId);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void increaseDownloadCount(String id) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(PostFileSQL.INCREASE_DOWNLOAD_COUNT)) {

			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
