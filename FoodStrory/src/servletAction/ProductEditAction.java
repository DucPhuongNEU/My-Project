package servletAction;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import model.etity.Product;

@WebServlet("/ProductEditAction")
public class ProductEditAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductEditAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int codeProduct = Integer.parseInt(request.getParameter("codeProduct"));
		int price = Integer.parseInt(request.getParameter("price"));
		int numberOfpro = Integer.parseInt(request.getParameter("numberOfpro"));
		
		String nameProduct = request.getParameter("nameProduct");
		//String price = request.getParameter("price");
		//String numberOfpro = request.getParameter("numberOfpro");
		String image = request.getParameter("image");
		String codeSP = request.getParameter("codeSP");
		String codeCompany = request.getParameter("codeCompany");
		Product p = new Product();
		
		p.setCodeProduct(codeProduct);
		p.setNameProduct(nameProduct);
		p.setPrice(price);
		p.setNumberOfpro(numberOfpro);
		p.setImage(image);
		p.setCodeSP(codeSP);
		p.setCodeCompany(codeCompany);

		try {
			new ProductModel().updateProduct(p);
			response.sendRedirect("./admin.jsp?f=product");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
