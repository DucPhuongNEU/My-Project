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

import model.ProductModel;
import model.etity.Product;


@WebServlet("/BuyProduct")
public class BuyProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BuyProduct() {
        super();
    }


	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codeProduct = request.getParameter("codeProduct");
		System.out.println(codeProduct);
		HttpSession session = request.getSession();
		
		
		//new ProductModel().ThemGioHang(Integer.parseInt(codeProduct));
		/*Cookie dsGioHang = new Cookie("dsGioHang", codeProduct);
		dsGioHang.setMaxAge(60*60*24);
		response.addCookie(dsGioHang);*/
		
		if(session.getAttribute("username") != null) {
			if(session.getAttribute("dsGioHang") == null) {
				try {
					Product p = new ProductModel().getProductById(Integer.parseInt(codeProduct));
					p.setCountbuy(1);
					List<Product> list = new ArrayList<>();
					list.add(p);
					session.setAttribute("dsGioHang", list);
					
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				response.sendRedirect("./cart.jsp");
			} else {
				List<Product> list = new ArrayList<>();
				list = (List<Product>) session.getAttribute("dsGioHang");
				boolean check = false;
				try {
					Product p = new ProductModel().getProductById(Integer.parseInt(codeProduct));
					for(int i = 0; i < list.size(); i++) {
						if(list.get(i).getCodeProduct() == p.getCodeProduct()) {
							list.get(i).setCountbuy(list.get(i).getCountbuy() + 1);
							session.setAttribute("dsGioHang", list);
							check = true;
						}
					}
					if(check == false) {
						p.setCountbuy(1);
						list.add(p);
						session.setAttribute("dsGioHang", list);
					}
				} catch (NumberFormatException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				response.sendRedirect("./cart.jsp");
			}
		} else {
			response.sendRedirect("./login.jsp");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
