package game.servlets;

import game.entities.Player;
import game.forms.ConnectionForm;
import game.stateless.PlayerService;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Connection
 */
public class Connection extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	@EJB
	PlayerService ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connection() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = (String) request.getParameter("action");
		if (action != null && action.equals("logout")) {
			HttpSession hs = request.getSession();
			hs.invalidate();
			response.setStatus(302);
			response.sendRedirect("home");
			response.setHeader( "Connection", "close" );
		} else {
			request.getServletContext().getRequestDispatcher("/WEB-INF/auth.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ConnectionForm cf = new ConnectionForm();
		Player player = cf.connectPlayer(ps, request);
		
		if (player == null) {
			request.setAttribute("values", cf.getValues());
			request.setAttribute("errors", cf.getErrors());
			request.getServletContext().getRequestDispatcher("/WEB-INF/auth.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("nickname", player.getNickname());
			response.setStatus(302);
			response.sendRedirect("home");
			response.setHeader( "Connection", "close" );
		}
	}

}
