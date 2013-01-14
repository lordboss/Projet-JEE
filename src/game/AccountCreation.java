package game;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
		String username = request.getParameter("username");
		
		if (accountAction.equals("signIn")) {
			
			Player p = ps.findPlayer(username);
			
			if (password == null || username == null || p == null || !(p.getPassword().equals(password))) {
				this.getServletContext().getRequestDispatcher("/login/errorAuthentification.html").forward(request, response);
			} else {
				request.getSession().setAttribute("user", p);
				request.setAttribute(username, "username");
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			}
		}
		
		if (accountAction.equals("signUp")) {
			String email = request.getParameter("email");
			String country = request.getParameter("country");
			String surname = request.getParameter("surname");
			String firstname = request.getParameter("firstname");
			String date = request.getParameter("birthDate");
			Date birthDate = null;
			
			if (email == null || country == null || surname == null || firstname == null || username == null || password == null) {
				this.getServletContext().getRequestDispatcher("/login/registration.jsp").forward(request, response);
			} else {
				try {
					birthDate = new SimpleDateFormat("dd-mm-yyyy").parse(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				Player p = ps.createPlayer(username, password, surname, firstname, email, country, birthDate);
				request.setAttribute(username, "username");
				request.getSession().setAttribute("user", p);
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
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
