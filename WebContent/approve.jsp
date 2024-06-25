<%@ page import="vaccine.Dbconnection" %>
<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin</title>
</head>
<body>
<%
   int hid =  Integer.parseInt(request.getParameter("id"));
   String status = "Approved";
   Connection con = Dbconnection.connect();
   PreparedStatement pstmt = con.prepareStatement("update hospital set status=? where hid=?");
   pstmt.setString(1,status);
   pstmt.setInt(2,hid);
   int i = pstmt.executeUpdate();
   if(i>0)
   {
 	  response.sendRedirect("ViewHospitalTable.jsp");
   }
   
%>
</body>
</html>