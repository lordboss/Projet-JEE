package game.servlets;

import game.entities.Player;
import game.forms.UpdateProfileForm;
import game.stateless.PlayerService;

import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resource
 */
@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private PlayerService ps;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Profile() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat formatter = new SimpleDateFormat("dd/mm/yyyy");
		Date birthdate = ((Player)request.getAttribute("player")).getInformation().getBirthdate();
		request.setAttribute("birthdate", formatter.format(birthdate));
		this.getServletContext().getRequestDispatcher("/WEB-INF/profile.jsp").forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		UpdateProfileForm upf = new UpdateProfileForm();
		upf.updatePlayer(ps, request);
		request.setAttribute("msg", upf.getMessages());
		request.setAttribute("types", upf.getTypes());
		SimpleDateFormat formatter = new SimpleDateFormat("dd/mm/yyyy");
		Player player = (Player) request.getAttribute("player");
		Date birthdate = player.getInformation().getBirthdate();
		request.setAttribute("birthdate", formatter.format(birthdate));
		request.getServletContext().getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
	}

}
