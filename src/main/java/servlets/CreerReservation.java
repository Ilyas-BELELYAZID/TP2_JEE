package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Client;
import models.Reservation;

//@WebServlet("/CreerReservation")
public class CreerReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");
		String type = request.getParameter("type");
		String prixStr = request.getParameter("prix");
		String vue = request.getParameter("vue");
		
		if (nom == null || nom.trim().isEmpty() || prenom == null || prenom.trim().isEmpty() || 
	            telephone == null || telephone.trim().isEmpty() || email == null || email.trim().isEmpty() ||
	            type == null || type.trim().isEmpty() || prixStr == null || prixStr.trim().isEmpty() ||
	            vue == null || vue.trim().isEmpty()) {
			request.setAttribute("erreur", "Ooops, erreur !!! Vous devez remplir tous les champs");
			request.getRequestDispatcher("Reservation.jsp").forward(request, response);
		}
		else {
			Client client = new Client(nom, prenom, telephone, email);
			Reservation reservation = new Reservation(client, type, Double.parseDouble(prixStr), vue);
			
			request.setAttribute("reservation", reservation);
			request.setAttribute("succes", "Reservation ajouté avec succès");
			
			request.getRequestDispatcher("WEB-INF/infoReservation.jsp").forward(request, response);
		}
	}

}
