package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EquipementDaoImpl;
import dao.UserDaoImpl;
import entities.equipement;
import entities.user;


@WebServlet("/AjoutEq")
public class AjoutEq extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try
	{
		final String ch,id,pin,cat;
	ch=request.getParameter("champ");
	id=request.getParameter("ideq");
	cat=request.getParameter("cat");
	pin=request.getParameter("pin");
	
	
	EquipementDaoImpl dao = new EquipementDaoImpl();
	equipement a= new equipement();
	a.setId(Integer.parseInt(id));
	a.setNom(cat);
	a.setNom_champ(ch);
	a.setPin(Integer.parseInt(pin));
	dao.ajouter(a);
	}
	catch(Exception e)
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Réessayer de nouveau !!');");
		   out.println("location='AjoutEquipement.jsp';");
		   out.println("</script>");
	}
	finally
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Equipement ajouté avec succès');");
		   out.println("location='index.jsp';");
		   out.println("</script>");
	}
	}

}
