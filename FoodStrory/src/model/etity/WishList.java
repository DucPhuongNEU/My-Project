package model.etity;

import java.sql.Date;

public class WishList {
	private int codeWishList;
	private Date dateWishList;
	private Date receivedDate;
	private String fullname;
	private String address;
	private String email;
	private int price_wishlist;
	private int id;
	private String confirm;

	public WishList() {

	}

	public WishList(int codeWishList, Date dateWishList, Date receivedDate, String fullname, String address, String email,
			int price_wishlist, int id, String confirm) {
		super();
		this.codeWishList = codeWishList;
		this.dateWishList = dateWishList;
		this.receivedDate = receivedDate;
		this.fullname = fullname;
		this.address = address;
		this.email = email;
		this.price_wishlist = price_wishlist;
		this.id = id;
		this.confirm = confirm;
	}

	public int getCodeWishList() {
		return codeWishList;
	}

	public void setCodeWishList(int codeWishList) {
		this.codeWishList = codeWishList;
	}

	public Date getDateWishList() {
		return dateWishList;
	}

	public void setDateWishList(Date dateWishList) {
		this.dateWishList = dateWishList;
	}

	public Date getReceivedDate() {
		return receivedDate;
	}

	public void setReceivedDate(Date receivedDate) {
		this.receivedDate = receivedDate;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPrice_wishlist() {
		return price_wishlist;
	}

	public void setPrice_order(int price_wishlist) {
		this.price_wishlist = price_wishlist;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

}
