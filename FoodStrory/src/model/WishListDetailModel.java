package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Connection.MySQLConnection;
import model.etity.WishListDetail;

public class WishListDetailModel {
	public List<WishListDetail> getOrdersDetail() throws SQLException {
		List<WishListDetail> list = new ArrayList<>();
		String sql = "select * from wishlistdetail";
		
		Statement state = MySQLConnection.getConnection().createStatement();
		
		ResultSet rs = state.executeQuery(sql);
		WishListDetail w;
		while(rs.next()) {
			w = new WishListDetail();
			w.setCodeWishList(rs.getInt("codeWishList"));
			w.setCodeProduct(rs.getInt("codeProduct"));
			w.setNameProduct(rs.getString("nameProduct"));
			w.setQuantity(rs.getInt("quantity"));
			w.setPrice(rs.getInt("price"));
			w.setPrice_total(rs.getInt("price_total"));
			
			list.add(w);
		}
		
		return list;
	}
	
	public List<WishListDetail> getWishListDetailById(int codeWishList) throws SQLException {
		List<WishListDetail> list = new ArrayList<>();
		String sql = "select * from wishlistdetail where codeWishList = ?";
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setInt(1, codeWishList);
		
		ResultSet rs = preState.executeQuery();
		WishListDetail w;
		while(rs.next()) {
			w = new WishListDetail();
			w.setCodeWishList(rs.getInt("codeWishList"));
			w.setCodeProduct(rs.getInt("codeProduct"));
			w.setNameProduct(rs.getString("nameProduct"));
			w.setQuantity(rs.getInt("quantity"));
			w.setPrice(rs.getInt("price"));
			w.setPrice_total(rs.getInt("price_total"));
			
			list.add(w);
		}
		
		return list;
	}
	
	public void insertWishListDetail(WishListDetail wd) throws SQLException {
		String sql = "insert into wishlistdetail(codeWishList, codeProduct, nameProduct, quantity, price, price_total) value (?, ?, ?, ?, ? , ?)";
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setInt(1, wd.getCodeWishList());
		preState.setInt(2, wd.getCodeProduct());
		preState.setString(3, wd.getNameProduct());
		preState.setInt(4, wd.getQuantity());
		preState.setInt(5, wd.getPrice());
		preState.setInt(6, wd.getPrice_total());
		
		System.out.println(">>>>>>> insert wishlistdetail "  + wd.getCodeProduct() + " quanti: " + wd.getQuantity());
		
		preState.executeUpdate();
	}
	
	public void deleteWishListDetail(int codeWishList) throws SQLException {
		String sql= "delete from wishlistdetail where codeWishList = ?";
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setInt(1, codeWishList);
		
		preState.executeUpdate();
	}
}
