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
import model.OrdersModel;
import model.etity.Customer;
import model.etity.Orders;
import model.etity.OrdersDetail;
import model.etity.Product;


@WebServlet("/SaveOrders")
public class SaveOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SaveOrders() {

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		OrdersModel oModel = new OrdersModel();
		Orders orders = new Orders();
		OrdersDetail orddetail = new OrdersDetail();
		AccountModel aModel = new AccountModel();
		
		HttpSession session = request.getSession();
		
		String username = (String) session.getAttribute("username");
		System.out.println("username buy: " + username);
		
		Customer cus = new Customer();
		try {
			cus = aModel.getDetailAccountByName(username);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		List<Product> dsGioHang = new ArrayList<>();
		dsGioHang = (List<Product>) session.getAttribute("dsGioHang");
		
		// Set order
		orders.setAddress(cus.getAddress());
		orders.setEmail(cus.getEmail());
		orders.setId(cus.getId());
		orders.setFullname(cus.getFullname());
		
		System.out.println(orders.getAddress());
		
		// Set orderDetail
		List<OrdersDetail> listOrddetail = new ArrayList<>();
		
		int sumprice = 0;
		
		for(int i = 0; i < dsGioHang.size(); i++) {
			orddetail = new OrdersDetail();
			orddetail.setCodeProduct(dsGioHang.get(i).getCodeProduct());
			orddetail.setNameProduct(dsGioHang.get(i).getNameProduct());
			orddetail.setQuantity(dsGioHang.get(i).getCountbuy());
			orddetail.setPrice(dsGioHang.get(i).getPrice());
			orddetail.setPrice_total(orddetail.getQuantity() * orddetail.getPrice());
			
			sumprice += orddetail.getPrice_total();
			listOrddetail.add(orddetail);
		}
		System.out.println(sumprice);
		orders.setPrice_order(sumprice);
		
		
		try {
			oModel.insertOrders(orders, listOrddetail);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//session.getAttribute("")
		response.sendRedirect("./index.jsp");
	}
}
