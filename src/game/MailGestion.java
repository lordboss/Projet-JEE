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
 * Servlet implementation class MailGestion
 */
@WebServlet("/MailGestion")
public class MailGestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @EJB PlayerService ps;
    @EJB MailService ms;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailGestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mailAction = request.getParameter("mailAction");
		Player user = (Player) request.getSession().getAttribute("user");
		List<Mail> receivedMails = ms.findReceivedMailsOf(user.getNickname());
		
		if (mailAction.equals("receivedMails")) {
			String selectedMail = request.getParameter("selectedMail");
			
			if (selectedMail == null) {
				request.setAttribute("receivedMails", receivedMails);
				this.getServletContext().getRequestDispatcher("/receivedMails.jsp").forward(request, response);
			} else {
				request.setAttribute("selectedMail", ms.findMail(Integer.parseInt(selectedMail)));
				this.getServletContext().getRequestDispatcher("/readMail.jsp").forward(request, response);
			}
		}
		
		if (mailAction.equals("sentMails")) {
			String selectedMail = request.getParameter("selectedMail");
			
			if (selectedMail == null) {
				List<Mail> sentMails = ms.findSentMailsOf(user.getNickname());
				request.setAttribute("sentMails", sentMails);
				this.getServletContext().getRequestDispatcher("/sentMails.jsp").forward(request, response);
			} else {
				request.setAttribute("selectedMail", ms.findMail(Integer.parseInt(selectedMail)));
				this.getServletContext().getRequestDispatcher("/readMail.jsp").forward(request, response);
			}
		}
		
		if (mailAction.equals("sendMail")) {
			String receiver = request.getParameter("destinataire");
			String subject = request.getParameter("sujet");
			String body = request.getParameter("corps");
			
			if (receiver == null || subject == null || body == null) {
				this.getServletContext().getRequestDispatcher("/sendMail.jsp").forward(request, response);
			} else {
				ms.createMail(user.getNickname(), receiver, body, subject);
				request.setAttribute("receivedMails", receivedMails);
				this.getServletContext().getRequestDispatcher("/receivedMails.jsp").forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
