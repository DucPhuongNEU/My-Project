package servletAction;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountModel;
import model.WishListModel;
import model.etity.Customer;
import model.etity.Product;
import model.etity.WishList;
import model.etity.WishListDetail;

@WebServlet("/SaverWish")
public class SaverWish extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SaverWish() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WishListModel wModel = new WishListModel();
		WishList wishlist = new WishList();
		WishListDetail wishlistdetail = new WishListDetail();
		AccountModel aModel = new AccountModel();
		
		HttpSession session = request.getSession();
		
		String username = (String) session.getAttribute("username");
		System.out.println("username chọn: " + username);
		
		Customer cus = new Customer();
		try {
			cus = aModel.getDetailAccountByName(username);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		List<Product> dsYeuThich = new ArrayList<>();
		dsYeuThich = (List<Product>) session.getAttribute("dsYeuThich");
		
		// Set order
		wishlist.setAddress(cus.getAddress());
		wishlist.setEmail(cus.getEmail());
		wishlist.setId(cus.getId());
		wishlist.setFullname(cus.getFullname());
		
		System.out.println(wishlist.getAddress());
		
		// Set orderDetail
		List<WishListDetail> listWishListdetail = new ArrayList<>();
		
		int sumprice = 0;
		
		for(int i = 0; i < dsYeuThich.size(); i++) {
			wishlistdetail = new WishListDetail();
			wishlistdetail.setCodeProduct(dsYeuThich.get(i).getCodeProduct());
			wishlistdetail.setNameProduct(dsYeuThich.get(i).getNameProduct());
			wishlistdetail.setQuantity(dsYeuThich.get(i).getCountbuy());
			wishlistdetail.setPrice(dsYeuThich.get(i).getPrice());
			wishlistdetail.setPrice_total(wishlistdetail.getQuantity() * wishlistdetail.getPrice());
			
			sumprice += wishlistdetail.getPrice_total();
			listWishListdetail.add(wishlistdetail);
		}
		System.out.println(sumprice);
		wishlist.setPrice_order(sumprice);
		
		
		try {
			wModel.insertWishList(wishlist, listWishListdetail);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//session.getAttribute("")
		response.sendRedirect("./index.jsp");
	}

}
