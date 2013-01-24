package game.servlets;

import game.entities.Player;
import game.stateless.PlayerService;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resource
 * @param <T>
 */
@WebServlet("/ranking")
public class Ranking<T> extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private PlayerService ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ranking() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Player> players = ps.findAll();
		ps.sortByRank(players);
		request.setAttribute("players", players);
		this.getServletContext().getRequestDispatcher("/WEB-INF/ranking.jsp").forward(request,  response);
	}

}
