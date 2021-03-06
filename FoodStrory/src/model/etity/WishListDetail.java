package model.etity;

public class WishListDetail {
	private int codeWishList;
	private int codeProduct;
	private String nameProduct;
	private int quantity;
	private int price;
	private int price_total;
	
	public WishListDetail() {
		
	}
	public WishListDetail(int codeWishList, int codeProduct, String nameProduct, int quantity, int price, int price_total) {
		super();
		this.codeWishList = codeWishList;
		this.codeProduct = codeProduct;
		this.nameProduct = nameProduct;
		this.quantity = quantity;
		this.price = price;
		this.price_total = price_total;
	}
	public int getCodeWishList() {
		return codeWishList;
	}
	public void setCodeWishList(int codeWishList) {
		this.codeWishList = codeWishList;
	}
	public int getCodeProduct() {
		return codeProduct;
	}
	public void setCodeProduct(int codeProduct) {
		this.codeProduct = codeProduct;
	}
	public String getNameProduct() {
		return nameProduct;
	}
	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPrice_total() {
		return price_total;
	}
	public void setPrice_total(int price_total) {
		this.price_total = price_total;
	}
	
}
