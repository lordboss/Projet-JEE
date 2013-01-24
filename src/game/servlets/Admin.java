package game.servlets;

import game.stateless.MailService;
import game.stateless.PointService;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mail
 */
@WebServlet("/admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private PointService ps;
	@EJB private MailService ms;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String update = request.getParameter("update");
		if (update != null) {
			if (update.equals("points")) {
				ps.updatePoints();
				request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;Les points des joueurs ont été mis à jour.</div>");
			} else if (update.equals("ranking")) {
				ps.updateRanking();
				request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Le classement a été mis à jour.</div>");
			} else if (update.equals("all")) {
				ps.updateAll();
				request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Les points et le classement des joueurs ont été mis à jour.</div>");
			} else if (update.equals("mail")) {
				ms.updateMailCounter();
				request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Le nombre de mails de chaque joueur a été mis à jour.</div>");
				
			}
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/admin.jsp").forward(request,  response);
	}
}
