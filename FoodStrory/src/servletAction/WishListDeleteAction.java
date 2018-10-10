package servletAction;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.WishListModel;

/**
 * Servlet implementation class WishListDeleteAction
 */
@WebServlet("/WishListDeleteAction")
public class WishListDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WishListDeleteAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
int codeWishList = Integer.parseInt(request.getParameter("codeWishList"));
		
		//OrdersModel oModel = new OrdersModel();
		
		try {
			new WishListModel().deleteWishList(codeWishList);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect("./admin.jsp?f=wishlist");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
