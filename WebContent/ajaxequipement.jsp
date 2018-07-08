<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

</head>
<body>

<form method="post" action="MajEq">
<%
String r = request.getParameter("ref");
try
	{
	String url="jdbc:mysql://localhost/agrox";
	String driver="com.mysql.jdbc.Driver";
	Class.forName(driver);
	Connection con=(Connection)DriverManager.getConnection(url,"root","");	
PreparedStatement st=(PreparedStatement)con.prepareStatement("select * from equipement where id=?");
st.setInt(1,Integer.parseInt(r));
ResultSet rs1=st.executeQuery();
if(rs1.next())
{
String ch=rs1.getString("nom_champ");
String n=rs1.getString("nom");
String p=rs1.getString("pin");
%>
	<div class="w3_mail_grids">
				<div class="col-md-6 col-xs-6 cont-editw3l">
					<input type="text" id="ref" name="ref" value="<%=r %>" />
					<input type="text" id="nom" name="nom" value="<%=n %>" />
					</div>
					<div class="col-md-6 col-xs-6 cont-editw3l">
					<input type="text" id="pin" name="pin" value="<%=p %>" />
					<input type="text" id="champ" name="champ" value="<%=ch %>" />
					</div>
					<div class="col-md-6 col-xs-6 cont-editw3l">
				<input type="submit" id="ok" name="ok" value="Modifier">
				<input type="submit" id="ok" name="ok" value="Supprimer">
					</div>
					
					</div>
					<%
					
}
	}
catch(Exception e)
{
	
}
					%>
					
	</form>
				
</body>
</html>