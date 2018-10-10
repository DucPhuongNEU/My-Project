package servletAction;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.OrdersModel;
import model.WishListModel;
import model.etity.WishList;

/**
 * Servlet implementation class WishListEditAction
 */
@WebServlet("/WishListEditAction")
public class WishListEditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishListEditAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				response.setContentType("text/html;charset=UTF-8");
				request.setCharacterEncoding("utf-8");
				
				String codeWishList = request.getParameter("codeWishList");
				//String receiveddate = request.getParameter("receiveddate");
				String address = request.getParameter("address");
				String email = request.getParameter("email");
				
//				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//				java.sql.Date date = null;
//				try {
//					date = (java.sql.Date) formatter.parse(receiveddate);
//				} catch (ParseException e) {
//					e.printStackTrace();
//				}
				
				WishList w = new WishList();
				//o.setCodeOrder(Integer.parseInt(codeOrder));
				w.setAddress(address);
				w.setEmail(email);
				//o.setReceivedDate((java.sql.Date) date);
				
				try {
					new WishListModel().updateWishList(w);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				response.sendRedirect("./admin.jsp?f=EditWishList");
	}

}
