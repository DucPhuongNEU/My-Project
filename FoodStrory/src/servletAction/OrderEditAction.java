package servletAction;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrdersModel;
import model.etity.Orders;

@WebServlet("/OrderEditAction")
public class OrderEditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public OrderEditAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2 Dòng dưới để lấy dữ liệu không bị lỗi font chữ
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		
		String codeOrder = request.getParameter("codeOrder");
		//String receiveddate = request.getParameter("receiveddate");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
//		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//		java.sql.Date date = null;
//		try {
//			date = (java.sql.Date) formatter.parse(receiveddate);
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
		
		Orders o = new Orders();
		//o.setCodeOrder(Integer.parseInt(codeOrder));
		o.setAddress(address);
		o.setEmail(email);
		//o.setReceivedDate((java.sql.Date) date);
		
		try {
			new OrdersModel().updateOrder(o);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("./admin.jsp?f=EditOrder");
	}

}
