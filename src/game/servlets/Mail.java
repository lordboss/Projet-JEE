package game.servlets;

import game.entities.Player;
import game.stateless.MailService;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mail
 */
@WebServlet("/mail")
public class Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private MailService ms;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mail() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Player player = (Player) request.getAttribute("player");
		String action = request.getParameter("action");
		if (action != null && action.equals("answer")) {
			String to = request.getParameter("to");
			if (to != null) {
				try {
					int id = Integer.parseInt(to);
					game.entities.Mail m = ms.getMail(id, player);
					if (m != null) {
						request.setAttribute("recipient", m.getSender().getNickname());
						request.setAttribute("topic", "Re: " + m.getTopic());
					}
				} catch (NumberFormatException nfe) {
				}
			}
			this.getServletContext().getRequestDispatcher("/WEB-INF/writemail.jsp").forward(request,  response);
		} else if (action != null && action.equals("write")) {
			String to = request.getParameter("to");
			if (to != null) {
				request.setAttribute("recipient", to);
			}
			String topic = request.getParameter("topic");
			if (topic != null) {
				request.setAttribute("topic", topic);
			}
			this.getServletContext().getRequestDispatcher("/WEB-INF/writemail.jsp").forward(request,  response);
		} else if (action != null && action.equals("delete")) {
			String to = request.getParameter("id");
			if (to != null) {
				try {
					int id = Integer.parseInt(to);
					if (ms.deleteMail(id, player)) {
						request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Message effacé.</div>");
					}
				} catch (NumberFormatException nfe) {
				}
			}
			List<game.entities.Mail> mails = ms.getMails(player);
			request.setAttribute("mails", mails);
			this.getServletContext().getRequestDispatcher("/WEB-INF/mail.jsp").forward(request,  response);
		} else {
			ms.resetUnread(player);
			List<game.entities.Mail> mails = ms.getMails(player);
			request.setAttribute("mails", mails);
			this.getServletContext().getRequestDispatcher("/WEB-INF/mail.jsp").forward(request,  response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Player player = (Player) request.getAttribute("player");
		String recipient = request.getParameter("recipient");
		request.setAttribute("recipient", recipient);
		String topic = request.getParameter("topic");
		request.setAttribute("topic", topic);
		String body = request.getParameter("body");
		request.setAttribute("body", body);
		if (recipient != null
				&& topic != null
				&& body != null
				&& ms.sendMail(player, recipient, topic, body)) {
			List<game.entities.Mail> mails = ms.getMails(player);
			request.setAttribute("mails", mails);
			request.setAttribute("result", "<div class=\"alert alert-success\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>Message envoyé.</div>");
			this.getServletContext().getRequestDispatcher("/WEB-INF/mail.jsp").forward(request,  response);
		} else {
			request.setAttribute("status", "error");
			request.setAttribute("result", "Destinataire inconnue.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/writemail.jsp").forward(request,  response);
		}
	}

}
