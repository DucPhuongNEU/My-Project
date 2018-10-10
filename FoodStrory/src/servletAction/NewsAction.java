package servletAction;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.NewsModel;
import model.etity.News;


@WebServlet("/NewsAction")
public class NewsAction extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public NewsAction() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2 Dòng dưới để lấy dữ liệu không bị lỗi font chữ
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("action");
		System.out.println(action);
		int id;
		String title = request.getParameter("title");
		String image = request.getParameter("image");
		String contents = request.getParameter("contents");
		
		News n = new News();
		n.setTitle(title);
		n.setImage(image);
		n.setContents(contents);
		
		switch (action) {
		case "insert":
//			System.out.println(n.getTitle());
//			System.out.println(request.getParameter("title"));
//			System.out.println(n.getImage());
			try {
				new NewsModel().insertNews(n);
				response.sendRedirect("./admin.jsp?f=new");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			break;
		case "edit":
			id = Integer.parseInt(request.getParameter("id"));
			n.setCodeNews(id);


			try {
				new NewsModel().updateNews(n);
				response.sendRedirect("./admin.jsp?f=new");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			break;
		default:
			id = Integer.parseInt(request.getParameter("id"));
			n.setCodeNews(id);

			try {
				new NewsModel().updateNews(n);
				response.sendRedirect("./admin.jsp?f=new");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		}




	}
}
