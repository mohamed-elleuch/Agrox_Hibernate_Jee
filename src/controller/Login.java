package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDaoImpl;
import entities.user;

import java.util.ArrayList;
import java.util.List;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try
{
	final String l,p;
l=request.getParameter("login");
p=request.getParameter("pwd");
user us=new user();
UserDaoImpl u=new UserDaoImpl();
us=u.trouveruser(l,p);
if(us==null)
{

	response.sendRedirect("Login.jsp");
}
else
{
	PrintWriter out=response.getWriter();
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Bienvenue Mr Administrateur');");
	   out.println("location='index.jsp';");
	   out.println("</script>");
}
}
catch(Exception e)
{
	response.sendRedirect("Login.jsp");
}
	}

}
