package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.JdbcUtil;

//싱글톤
public class ProductDAO {

	private static ProductDAO dao = null;
	private ProductDAO() {}

	public static ProductDAO getInstance() {
		if( dao == null ) {
			dao = new ProductDAO();
		}
		return dao;
	}

	public int insert(Connection conn, ProductDAO dto){
		int result = 0;
		String sql = "insert into pd_tbl "
				+" ( pd_code, pd_name, pd_docu  ) "
				+" values "
				+" ( seq_pd_code_num.nextval , ?, ?) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPdName());
			pstmt.setString(2, dto.getPdDocu());
			
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			try { pstmt.close(); 
			} catch (SQLException e) {
				e.printStackTrace();         
			}
		}
		return result;
	}


	private String getPdDocu() {
		String pdDocu;
		return getPdDocu();
	}

	private String getPdName() {
		String pdName;
		return getPdName();
	}

	public ArrayList<ProductDTO> selectFileList(Connection conn) {

		ArrayList<ProductDTO> list =  null;

		String sql = " select pd_code, pd_name, pd_docu  "
						+" from pd_tbl "
						+" order by pd_code desc ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			ProductDTO dto = null;
			if (rs.next()) {
				list = new ArrayList<ProductDTO>();
				do {
					dto = new ProductDTO();
					dto.setPdCode(rs.getInt("pdCode"));
					dto.setPdName(rs.getString("pdName"));
					dto.setPdDocu(rs.getString("pdDocu"));
					list.add(dto);
				} while (rs.next());
			} // 
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			try { pstmt.close(); 
		} catch (SQLException e) {
			e.printStackTrace();         
		}
	}
		return list;
	}

	public int delete(Connection conn, int pdCode) {
		int result = 0;
		String sql = "delete from pd_tbl where pd_code = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pdCode );
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return result;
	}

	public ProductDTO selectOne(Connection con, int pdCode) {
		String sql = 
				" select pd_code, pd_name, pd_docu  "
						+" from pd_tbl "
						+" where pd_code = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductDTO dto = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, pdCode);
			rs = pstmt.executeQuery();
			if( rs.next()) {
				dto = new ProductDTO();
				dto.setPdCode(rs.getInt("pdCode"));
				dto.setPdName(rs.getString("pdName"));
				dto.setPdDocu(rs.getString("pdDocu"));
			}
		}catch(Exception e) {
			System.out.println("> dao.insert()  : " + e.toString());
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return dto;
	}

	public int update(Connection conn, ProductDTO dto) {
		int result = 0;
		String sql = " update pd_tbl "
				+ " set pd_name=?,pd_docu=? "
				+ " where pd_code = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPdName());
			pstmt.setString(2, dto.getPdDocu());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) { 
			e.printStackTrace();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return result;
	}


} //class