package game;


import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.validator.constraints.Email;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/ServletPlayer")
public class ServletPlayer extends HttpServlet {
	private static final long serialVersionUID = 1L;
   @EJB PlayerService ps;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPlayer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");

		if (action.equals("listplayers")) {
			List<Player> players = ps.findAllPlayers();
			request.setAttribute("players", players);
			this.getServletContext().getRequestDispatcher("/list-players.jsp").forward(request, response);
		}

		if (action.equals("createplayer")) {
			String pseudo = request.getParameter("pseudo");
			String pass = request.getParameter("pwd");
			String lastname = request.getParameter("lastName");
			String firstname = request.getParameter("firstName");
                        Date dob = (Date) request.getAttribute("dob"); //a verifier ce getAttribute !
                        String email = request.getParameter("email");
                        String city = request.getParameter("city");
                        String country = request.getParameter("country");
                        Boolean newsletter = (Boolean) request.getAttribute("newsletter");
                        Boolean newspar = (Boolean) request.getAttribute("newspar");

                        
                        //pas la peine a ce if, avec les required dans la jsp ( a vérifier)
			//if (pseudo == null || pass == null || surname == null || firstname == null) {
			//	this.getServletContext().getRequestDispatcher("/create-player.html").forward(request, response);
		//	} else {
                            
			ps.createPlayer(pseudo,pass, email,firstname, lastname, city, country,dob,newsletter,newspar,0,0);
			this.getServletContext().getRequestDispatcher("/menu.html").forward(request, response);
			//}
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