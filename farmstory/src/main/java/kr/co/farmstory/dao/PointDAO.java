package kr.co.farmstory.dao;

import java.util.ArrayList;
import java.util.List;

import kr.co.farmstory.dto.PointDTO;
import kr.co.farmstory.util.DBHelper;

public class PointDAO extends DBHelper {

    private static final PointDAO INSTANCE = new PointDAO();

    public static PointDAO getInstance() {
        return INSTANCE;
    }

    private PointDAO() {}

    // C - 포인트 로그 등록
    public void insert(PointDTO dto) {

        try {
            conn = getConnection();

            String sql = "INSERT INTO point(user_id, amount) VALUES(?, ?)";

            psmt = conn.prepareStatement(sql);

            psmt.setString(1, dto.getUserId());
            psmt.setInt(2, dto.getAmount());

            psmt.executeUpdate();

            closeAll();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    // R - 특정 회원의 포인트 로그 목록 조회
    public List<PointDTO> selectAll(String userId) {

        List<PointDTO> points = new ArrayList<>();

        try {
            conn = getConnection();

            String sql = "SELECT * FROM point "
                       + "WHERE user_id=? "
                       + "ORDER BY created_at DESC";

            psmt = conn.prepareStatement(sql);

            psmt.setString(1, userId);

            rs = psmt.executeQuery();

            while (rs.next()) {

                PointDTO dto = new PointDTO();

                dto.setId(rs.getInt("id"));
                dto.setUserId(rs.getString("user_id"));
                dto.setAmount(rs.getInt("amount"));
                dto.setCreatedAt(rs.getString("created_at"));

                points.add(dto);
            }

            closeAll();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return points;
    }


    // R - 포인트 로그 1건 조회
    public PointDTO select(int id) {

        PointDTO dto = null;

        try {
            conn = getConnection();

            String sql = "SELECT * FROM point WHERE id=?";

            psmt = conn.prepareStatement(sql);

            psmt.setInt(1, id);

            rs = psmt.executeQuery();

            if (rs.next()) {

                dto = new PointDTO();

                dto.setId(rs.getInt("id"));
                dto.setUserId(rs.getString("user_id"));
                dto.setAmount(rs.getInt("amount"));
                dto.setCreatedAt(rs.getString("created_at"));
            }

            closeAll();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }

}