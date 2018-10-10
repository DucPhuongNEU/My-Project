package servletAction;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import model.ProductModel;
import model.etity.Product;


@WebServlet("/ProductAction")
public class ProductAction extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ProductAction() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int codeProduct = Integer.parseInt(request.getParameter("codeProduct"));
		if(action.equals("delete")) {
			try {
				new ProductModel().deleteProduct(codeProduct);
				response.sendRedirect("./admin.jsp?f=product");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html;charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
	
			String nameProduct = request.getParameter("nameProduct");
			int price = 0;
			int numberOfpro = 0;
			String image = request.getParameter("image");
			String codeSP = request.getParameter("codeSP");
			String codeCompany = request.getParameter("codeCompany");
			Product p = new Product();
	
			//String nameProduct = null;
			//int price = 0;
			//int numberOfpro = 0;
			//String image = null;
			//String codeSP = null;
			//String codeCompany = null;
	
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			if(isMultipart){
				FileItemFactory fileItemFactory = new DiskFileItemFactory();
				ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
	
				try {
					List items = servletFileUpload.parseRequest(request);
					FileItem fItem ;
					for(Object item : items){
						fItem = (FileItem) item;
						if(fItem.isFormField()){
							switch (fItem.getFieldName()) {
							case "nameProduct":
								nameProduct = fItem.getString();
								break;
							case "price":
								price = Integer.parseInt(fItem.getString()); 
								break;
							case "numberOfpro":
								numberOfpro = Integer.parseInt(fItem.getString());
								break;
							case "codeSP":
								codeSP = fItem.getString();
								break;
							case "codeCompany":
								codeCompany = fItem.getString();
								break;
							default:
								break;
							}
						} else {
							if(fItem.getName() != null && fItem.getName().trim().length() > 0){
								//String filePath = getServletContext().getRealPath("/") + "images/product";
								String filePath = "E:\\HoangBoss\\EOH\\FoodStrory\\WebContent\\images\\product";
								File uploadFolder = new File(filePath);
								if(uploadFolder.exists() == false) uploadFolder.mkdirs();
								String fileName = fItem.getName();
								filePath += "/" + fileName.substring(fileName.lastIndexOf("\\") + 1);
								File uploadedFile = new File(filePath);
								fItem.write(uploadedFile);
								System.out.println(">>>>>> File:" + uploadedFile.getPath());
								//image = fItem.getName();
								image = fileName;
							}
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
	
			//Product p = new Product();
			p.setNameProduct(nameProduct);
			p.setPrice(price);
			p.setNumberOfpro(numberOfpro);
			p.setImage(image);
			p.setCodeSP(codeSP);
			p.setCodeCompany(codeCompany);
	
			try {
				new ProductModel().insertProduct(p);
				response.sendRedirect("admin.jsp?f=product");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
}
