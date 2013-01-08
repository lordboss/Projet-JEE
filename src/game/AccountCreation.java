package game;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AccountCreation
 */
@WebServlet("/AccountCreation")
public class AccountCreation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @EJB PlayerService ps;  
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountCreation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String accountAction = request.getParameter("accountAction");
		String password = request.getParameter("password");
		String id = request.getParameter("id");
		
		if (accountAction.equals("signIn")) {
			
			Player p = ps.findPlayer(id);
			
			if (password == null || id == null || p == null || !(p.getPassword().equals(password))) {
				this.getServletContext().getRequestDispatcher("/login/errorAuthentification.html").forward(request, response);
			} else {
				request.setAttribute(id, "id");
				this.getServletContext().getRequestDispatcher("/account/account.jsp").forward(request, response);
			}
		}
		
		if (accountAction.equals("signUp")) {
			String email = request.getParameter("email");
			String country = request.getParameter("country");
			String surname = request.getParameter("surname");
			String firstname = request.getParameter("firstname");
			
			if (email == null || country == null || surname == null || firstname == null || id == null || password == null) {
				this.getServletContext().getRequestDispatcher("/login/registration.jsp").forward(request, response);
			} else {
				ps.createPlayer(id, password, surname, firstname, email, country);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
