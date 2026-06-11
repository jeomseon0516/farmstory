package kr.co.farmstory.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory.dto.FileDTO;
import kr.co.farmstory.sql.FileSQL;
import kr.co.farmstory.util.ConnectionProvider;

public enum FileDAO {
	INSTANCE;

	public FileDTO selectById(String id) {

		FileDTO dto = null;

		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(FileSQL.SELECT)) {

			psmt.setString(1, id);

			try (ResultSet rs = psmt.executeQuery()) {
				if (rs.next()) {
					dto = new FileDTO();
					dto.setId(rs.getInt(1));
					dto.setOriginalName(rs.getString(2));
					dto.setStoredName(rs.getString(3));
					dto.setUploadedAt(rs.getString(4));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return dto;
	}

	public int insert(FileDTO dto) {
		int id = 0;
		
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(
						FileSQL.INSERT,
						Statement.RETURN_GENERATED_KEYS)) {
			psmt.setString(1, dto.getOriginalName());
			psmt.setString(2, dto.getStoredName());
			psmt.executeUpdate();
			
			try (ResultSet rs = psmt.getGeneratedKeys()) {
				if (rs.next()) {
					id = rs.getInt(1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return id;
	}

	public void delete(String id) {
		try (Connection conn = ConnectionProvider.getConnection();
				PreparedStatement psmt = conn.prepareStatement(FileSQL.DELETE)) {
			psmt.setString(1, id);
			psmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
