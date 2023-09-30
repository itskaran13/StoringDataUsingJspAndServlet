

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/Update1")
public class Update1 extends HttpServlet {
	 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out = response.getWriter();
		
		try {
			Connection con = LoginDao.initializeDatabase();
		 PreparedStatement st = con.prepareStatement("update data set status = 'active' where id = ?");
		st.setInt(1,Integer.parseInt(request.getParameter("id")));
		
		st.executeUpdate();
		
        
       
      
       response.sendRedirect("Request.jsp");
		}
		
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	
	}
	}
	 

}
