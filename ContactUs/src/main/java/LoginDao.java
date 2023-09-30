import java.sql.*;

import javax.servlet.annotation.WebServlet;
public class LoginDao {
	protected static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
	String sql ="insert into data values(?, ?,?)";
	String url="jdbc:mysql://localhost:3306/login";
	String username="root";
	String password = "";	
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			
		return con;
	}

}
