package servlets;

import models.Client;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/CreerClient")
public class CreerClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String telephone = request.getParameter("telephone");
		String email = request.getParameter("email");

		if (nom == null || nom.trim().isEmpty() || prenom == null || prenom.trim().isEmpty() || telephone == null
				|| telephone.trim().isEmpty() || email == null || email.trim().isEmpty()) {
			request.setAttribute("erreur", "Ooops, erreur !!! Vous devez remplir tous les champs");
			request.getRequestDispatcher("Inscription.jsp").forward(request, response);
		} else {
			Client client = new Client(nom, prenom, telephone, email);

			request.setAttribute("client", client);
			request.setAttribute("succes", "Client ajouté avec succès");

			request.getRequestDispatcher("WEB-INF/infoClient.jsp").forward(request, response);
		}
	}

}
