package game.servlets;

import game.entities.Player;
import game.forms.RegistrationForm;
import game.stateless.PlayerService;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Inscription
 */
public class Registration extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	@EJB PlayerService ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getServletContext().getRequestDispatcher("/WEB-INF/registration.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RegistrationForm rf = new RegistrationForm();
		Player p = rf.registryPlayer(ps, request);
		if (p == null) {
			request.setAttribute("values", rf.getValues());
			request.setAttribute("errors", rf.getErrors());
			request.getServletContext().getRequestDispatcher("/WEB-INF/registration.jsp").forward(request, response);
		} else {
			request.getServletContext().getRequestDispatcher("/WEB-INF/registred.jsp").forward(request, response);
		}
	}

}
