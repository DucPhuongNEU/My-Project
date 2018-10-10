package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import model.Connection.MySQLConnection;
import model.etity.WishList;
import model.etity.WishListDetail;

public class WishListModel {
	public List<WishList> getAllWishList() throws SQLException {
		List<WishList> list = new ArrayList<>();
		
		String sql = "SELECT * FROM WishList ORDER BY codeWishList DESC;";
		
		Statement statement = MySQLConnection.getConnection().createStatement();
		ResultSet rs = statement.executeQuery(sql);
		WishList o;
		while(rs.next()) {
			o = new WishList();
			o.setCodeWishList(rs.getInt("codeWishList"));
			o.setDateWishList(rs.getDate("dateWishList"));
			o.setReceivedDate(rs.getDate("receiveddate"));
			o.setFullname(rs.getString("fullname"));
			o.setAddress(rs.getString("address"));
			o.setEmail(rs.getString("email"));
			o.setId(rs.getInt("id"));
			o.setConfirm(rs.getString("confirm"));
			o.setPrice_order(rs.getInt("price_wishlist"));

			list.add(o);
		}
		return list;
	}
	
	public WishList getWishListByIdString(String codeWishList) throws SQLException {
		String sql = "select * from WishList where codeWishList = ?;";
		
		int id = Integer.parseInt(codeWishList);
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setInt(1, id);
		
		ResultSet rs = preState.executeQuery();
		WishList o;
		rs.next();
			o = new WishList();
			o.setCodeWishList(rs.getInt("codeWishList"));
			o.setDateWishList(rs.getDate("dateWishList"));
			o.setReceivedDate(rs.getDate("receiveddate"));
			o.setFullname(rs.getString("fullname"));
			o.setAddress(rs.getString("address"));
			o.setEmail(rs.getString("email"));
			o.setId(rs.getInt("id"));
			o.setConfirm(rs.getString("confirm"));
			o.setPrice_order(rs.getInt("price_wishlist"));
		return o;
	}
	
	
	public void insertWishList(WishList w, List<WishListDetail> listWishListdetail) throws SQLException {
		String sql = "INSERT INTO WishList(dateWishList, receiveddate, fullname, address, email, price_wishlist, id) VALUE (?, ?, ?, ?, ?, ?, ?);";
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		
		// Láº¥y thá»�i gian hiá»‡n táº¡i
		long millis = System.currentTimeMillis();
		java.sql.Date date = new java.sql.Date(millis);
		preState.setDate(1, date);
		
		// TÄƒng ngÃ y vÃ  covert vá»� kiá»ƒu java.sql.date
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(Calendar.DAY_OF_MONTH, 7);
		java.sql.Date datee = new java.sql.Date(c.getTimeInMillis());
		//
		
		preState.setDate(2, datee);
		preState.setString(3, w.getFullname());
		preState.setString(4, w.getAddress());
		preState.setString(5, w.getEmail());
		preState.setInt(6, w.getPrice_wishlist());
		preState.setInt(7, w.getId());
		
		preState.executeUpdate();
		int number = 0;
		
		ResultSet rs = preState.getGeneratedKeys();
		
		if(rs.next()) {
			number = rs.getInt(1);
		}
		
		WishListDetailModel wdModel = new WishListDetailModel();
		for(int i = 0; i < listWishListdetail.size(); i++) {
			
			listWishListdetail.get(i).setCodeWishList(number);
			WishListDetail wishlistdetail = listWishListdetail.get(i);
			wdModel.insertWishListDetail(wishlistdetail);
		}
	}
	
	////// them o.setConfirm(rs.getString("confirm"));
	public void updateWishList(WishList w) throws SQLException {
		String sql = "update WishList set fullname = ?, address = ?, email = ? where codeWishList = ?;";
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setDate(1, w.getReceivedDate());
		preState.setString(2, w.getFullname());
		preState.setString(3, w.getAddress());
		preState.setString(4, w.getEmail());
		preState.setInt(5, w.getCodeWishList());
	}
	
	public void deleteWishList(int codeWishList) throws SQLException {
		String sql = "delete from WishList where codeWishList = ?;";
		
		WishListDetailModel wdModel = new WishListDetailModel();
		wdModel.deleteWishListDetail(codeWishList);
		
		PreparedStatement preState = MySQLConnection.getConnection().prepareStatement(sql);
		
		preState.setInt(1, codeWishList);
		
		preState.executeUpdate();
		
		
		
	}
}
