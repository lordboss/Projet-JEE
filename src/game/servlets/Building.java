package game.servlets;

import game.entities.Player;
import game.stateless.BuildingService;

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
@WebServlet("/building")
public class Building extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private BuildingService bs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Building() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Player player = (Player) request.getAttribute("player");
		String build = request.getParameter("build");
		if (build != null) {
			try {
				int id = Integer.parseInt(build);
				String result = bs.build(player, id);
				request.setAttribute("result", result);
			} catch (NumberFormatException bfe) {
				// pass
			}
		}
		List<game.buildings.Building> buildings = bs.getBuildings(player);
		request.setAttribute("buildings", buildings);
		this.getServletContext().getRequestDispatcher("/WEB-INF/building.jsp").forward(request,  response);
	}

}
