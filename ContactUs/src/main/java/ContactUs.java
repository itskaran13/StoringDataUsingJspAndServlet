


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



 
@WebServlet("/Contactus")
public class ContactUs extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		try {
			Connection con = LoginDao.initializeDatabase();
		 PreparedStatement st = con.prepareStatement("insert into data (Name,Email,message) values(?, ?,?)");
		st.setString(1,request.getParameter("name"));
		st.setString(2, request.getParameter("email"));
		st.setString(3,request.getParameter("textarea"));
		st.executeUpdate();
		
       out.println("<html><body><b>Successfully Inserted"
                   + "</b></body></html>");
       
       
       response.sendRedirect("Index.jsp");
      

		}
	 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	
	}
	}

}



