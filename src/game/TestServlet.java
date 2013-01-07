package game;


import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @EJB BuildingService bs;
    @EJB PlayerService ps;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		
		if (action.equals("createbuilding")) {
			String name = request.getParameter("name");
			if (name == null) {	
				this.getServletContext().getRequestDispatcher("/create-building.html").forward(request, response);
			} else {
				bs.createBuilding(1,1,1,1, 1, "", name);
				this.getServletContext().getRequestDispatcher("/menu.html").forward(request, response);
			}
		}
		
		if (action.equals("listbuildings")) {
			String id = request.getParameter("buildingToUpgrade");
			
			if (id == null) {
				List<Buildings> buildings = ps.findBuildingPairsOf("a");
				request.setAttribute("buildings", buildings);
				this.getServletContext().getRequestDispatcher("/buildings.jsp").forward(request, response);
			} else {
				ps.upgradeBuilding("a", Integer.parseInt(id));
				List<Buildings> buildings = ps.findBuildingPairsOf("a");
				request.setAttribute("buildings", buildings);
				this.getServletContext().getRequestDispatcher("/buildings.jsp").forward(request, response);
			}
		}
		
		if (action.equals("listplayers")) {
			List<Player> players = ps.findAllPlayers();
			request.setAttribute("players", players);
			this.getServletContext().getRequestDispatcher("/list-players.jsp").forward(request, response);
		}
		
		if (action.equals("createplayer")) {
			String pseudo = request.getParameter("pseudo");
			String pass = request.getParameter("pass");
			String surname = request.getParameter("surname");
			String firstname = request.getParameter("firstname");
			
			if (pseudo == null || pass == null || surname == null || firstname == null) {
				this.getServletContext().getRequestDispatcher("/create-player.html").forward(request, response);
			} else {
				ps.createPlayer(pseudo, pass, surname, firstname, " ", " ", 0);
				this.getServletContext().getRequestDispatcher("/menu.html").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}

}
