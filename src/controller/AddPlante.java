package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EquipementDaoImpl;
import dao.PlanteDaoImpl;
import entities.equipement;
import entities.plante;


@WebServlet("/AddPlante")
public class AddPlante extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try
		{
		final String ch,id,cat;
	ch=request.getParameter("champ");
	id=request.getParameter("idplante");
	cat=request.getParameter("cat");
	PlanteDaoImpl dao = new PlanteDaoImpl();
	plante a= new plante();
	a.setId(Integer.parseInt(id));
	a.setNom_champ(ch);
	a.setCategorie(cat);
	dao.ajouter(a);
	}
	catch(Exception e)
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Réessayer de nouveau !!');");
		   out.println("location='AjoutPlante.jsp';");
		   out.println("</script>");
	}
	finally
	{
		PrintWriter out=response.getWriter();
		out.println("<script type=\"text/javascript\">");
		   out.println("alert('Plante ajoutée avec succès');");
		   out.println("location='index.jsp';");
		   out.println("</script>");
	}
	}

}
