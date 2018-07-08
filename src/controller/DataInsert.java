package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.UserDaoImpl;
import entities.user;

/**
 * Servlet implementation class DataInsert
 */
@WebServlet("/DataInsert")
public class DataInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<user> emp = new ArrayList<user>();
		int c=Integer.parseInt(request.getParameter("cin"));
		UserDaoImpl dao = new UserDaoImpl();
		user a= new user();
		a.setCin(c);
		boolean b=dao.ajouter(a);
		emp.addAll(dao.trouverTous());
	}

}
