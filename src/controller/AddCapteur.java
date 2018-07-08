package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CapteurDaoImpl;
import dao.PlanteDaoImpl;
import entities.capteur;
import entities.plante;


@WebServlet("/AddCapteur")
public class AddCapteur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
		final String ch, idp,idc,nom;
		ch=request.getParameter("champ");
		idp=request.getParameter("idplante");
		idc=request.getParameter("idcapteur");
		nom=request.getParameter("ref");
		
		CapteurDaoImpl dao = new CapteurDaoImpl();
		capteur a= new capteur();
		a.setId(Integer.parseInt(idc));
		a.setId_plante(Integer.parseInt(idp));
		a.setNom_champ(ch);
		a.setLibelle(nom);
		dao.ajouter(a);
		}
		catch(Exception e)
		{
			PrintWriter out=response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Réessayer de nouveau !!');");
			   out.println("location='AjoutCapteur.jsp';");
			   out.println("</script>");
		}
		finally
		{
			PrintWriter out=response.getWriter();
			out.println("<script type=\"text/javascript\">");
			   out.println("alert('Capteur ajouté avec succès');");
			   out.println("location='index.jsp';");
			   out.println("</script>");
		}
		
	}

}
