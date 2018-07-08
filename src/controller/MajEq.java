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


@WebServlet("/MajEq")
public class MajEq extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try
	{
		final String ch,nom,pin,ref,b;
	ch=request.getParameter("champ");
	nom=request.getParameter("nom");
	ref=request.getParameter("ref");
	pin=request.getParameter("pin");
	b=request.getParameter("ok");
	
	EquipementDaoImpl dao = new EquipementDaoImpl();
	equipement a= new equipement();
	
	if(b.equals("Modifier"))
	{
	a.setId(Integer.parseInt(ref));
	a.setNom(nom);
	a.setNom_champ(ch);
	a.setPin(Integer.parseInt(pin));
	dao.modifier(a);
	PrintWriter out=response.getWriter();
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Equipement modifié avec succès');");
	   out.println("location='index.jsp';");
	   out.println("</script>");
	}
	else if(b.equals("Supprimer"))
	{
	a.setId(Integer.parseInt(ref));	
	dao.supprimer(a);
	PrintWriter out=response.getWriter();
	out.println("<script type=\"text/javascript\">");
	   out.println("alert('Equipement supprimé avec succès');");
	   out.println("location='index.jsp';");
	   out.println("</script>");
	}
	}
	catch(Exception e)
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Réessayer de nouveau !!');");
		   out.println("location='MAJEquipement.jsp';");
		   out.println("</script>");
	}

	}

}
