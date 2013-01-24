package game.servlets;

import game.entities.Player;
import game.stateless.BuildingService;
import game.stateless.ResourceService;

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
 */
@WebServlet("/production")
public class Production extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private ResourceService rs;
	@EJB private BuildingService bs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Production() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Player player = (Player) request.getAttribute("player");
		List<game.buildings.Building> buildings = bs.getBuildings(player);
		request.setAttribute("buildings", buildings);
		request.setAttribute("base", rs.getBaseYield());
		request.setAttribute("total", rs.getYield(player, buildings));
		this.getServletContext().getRequestDispatcher("/WEB-INF/production.jsp").forward(request,  response);
	}

}
