package javaweb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ImageManager implements ItemImageView {

	@Override
	public void itemImage(Item item) {
		
		MySQLDatabase database = new MySQLDatabase("jdbc/javaweb");
		
		try {
			Connection conn = database.connect();
			String sql = "SELECT product_img FROM product_img WHERE product_cd = ?";
			
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, item.getProductCd());
			
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				item.setProductImg(rs.getString("product_img"));
			}
			
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
