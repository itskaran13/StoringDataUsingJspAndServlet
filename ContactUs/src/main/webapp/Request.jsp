<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page  import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.table1{
border:5px solid green;
}
.table2{
border:5px solid red;
}
table td{
font-size:25px;
}



</style>
</head>
<body>
<h2>User Requests</h2>
<br>
<table class = "table1" border="1">
    <tr>
        <th>ID</th>
        <th>User</th>
        <th>Email</th>
        <th>Message</th>
        <th>Action</th>
    </tr>
    <%
        String Query = "select *  from data ";
	String url="jdbc:mysql://localhost:3306/login";
	String username="root";
	String password = "";	
	
        try {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	Connection con = DriverManager.getConnection(url,username,password);
              Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(Query);

            while (rs.next()) {
               
String name = rs.getString(1);
                String email = rs.getString(2);
                String message = rs.getString(3);
                int id = rs.getInt(4);
                String status = rs.getString(5);
                if(status.equals("archived")){
    %>
    <tr>
        <td><%= id %></td>
        <td><%= name %></td>
        <td><%= email %></td>
        <td><%= message %></td>
       <td><a href = "Update1?id=<%= id %>" ><button name = "id"><%= status %></button></a></td>
        
    </tr>
    
    <%}
            }
            %>
            </table>
           <br>
            <table class="table2" border = "1">
            <tr>
        <th>ID</th>
        <th>User</th>
        <th>Email</th>
        <th>Message</th>
        <th>Action</th>
    </tr>
            <%
            ResultSet rs1 = st.executeQuery(Query);

            while (rs1.next()) {
               
String name = rs1.getString(1);
                String email = rs1.getString(2);
                String message = rs1.getString(3);
                int id = rs1.getInt(4);
                String status = rs1.getString(5);
                if(status.equals("active")){
            %>
            <tr>
        <td><%= id %></td>
        <td><%= name %></td>
        <td><%= email %></td>
        <td><%= message %></td>
       <td><a href = "Update?id=<%= id %>" ><button name = "id"><%= status %></button></a></td>
        
    </tr>
    <%}
            }
            %>
            </table>
            <%
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</body>
</html>