package model;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class DemoUpload {
	public static void uploadFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		final String UPLOAD_DIRECTORY = "images\\product";
		final int MaxMemoryFile = 1024 * 1024 * 3; // 3MB 
		final int MaxRequestSize = 1024 * 1024 * 50; 
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
		 
		factory.setSizeThreshold(MaxMemoryFile);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
		
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		upload.setSizeMax(MaxRequestSize);
		
		List<FileItem> items = upload.parseRequest(request);
		Iterator<FileItem> iter = items.iterator();
		while(iter.hasNext()) {
			FileItem item = iter.next();
			if(!item.isFormField()) {
				String filename = item.getName();
				
				String partFile = UPLOAD_DIRECTORY + File.separator + filename;
				
				File fileupload = new File(partFile);
				
				boolean kt = fileupload.exists();
				
				if(kt == true) {
					request.setAttribute("messenge", "File da ton tai");
				} else {
					item.write(fileupload);
					request.setAttribute("messenge", "Upload thanh cong");
					request.setAttribute("img", UPLOAD_DIRECTORY + filename);
				}
				
				
			} else {

				request.setAttribute("messenge", "Upload that bai");
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("./View.jsp");
		
		rd.forward(request, response);
	}
}
