package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dao.EquipementDaoImpl;
import dao.UserDaoImpl;
import entities.equipement;
import entities.user;


@WebServlet("/Commande")
public class Commande extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try
	{
		final String e,b;
		int s = 0;
		String url="jdbc:mysql://192.168.1.4/agrox";
		String driver="com.mysql.jdbc.Driver";
		Class.forName(driver);
		Connection con=(Connection)DriverManager.getConnection(url,"root","root");	
	e=request.getParameter("eq");
	b=request.getParameter("ok");
	if(b.equals("ON"))
	{
		s=1;
	}
	else if(b.equals("OFF"))
	{
		s=0;
	}
	
PreparedStatement st=(PreparedStatement)con.prepareStatement("update equipement set etat=? where nom=? ");
	st.setInt(1, s);
	st.setString(2, e);
	st.executeUpdate();
	
	}
	catch(Exception e)
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Réessayer de nouveau !!');");
		   out.println("location='Commande.jsp';");
		   out.println("</script>");
	}
	finally
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Equipement commandé avec succès');");
		   out.println("location='index.jsp';");
		   out.println("</script>");
	}
	}

}
