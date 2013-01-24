package game.servlets;

import game.entities.Player;
import game.entities.Transaction;
import game.stateless.TransactionService;

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
@WebServlet("/market")
public class Market extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB private TransactionService ts;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Market() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String transaction = request.getParameter("transaction");
		if (transaction != null) {
			try {
				int id = Integer.parseInt(transaction);
				Player player = (Player) request.getAttribute("player");
				int result = ts.acceptTransaction(player, id);
				request.setAttribute("result", result);
			} catch (NumberFormatException bfe) {
				// pass
			}
		}
		List<Transaction> transactions = ts.getTransactions();
		request.setAttribute("transactions", transactions);
		this.getServletContext().getRequestDispatcher("/WEB-INF/market.jsp").forward(request,  response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = ts.parseForm(request);
		request.setAttribute("result", result);
		List<Transaction> transactions = ts.getTransactions();
		request.setAttribute("transactions", transactions);
		this.getServletContext().getRequestDispatcher("/WEB-INF/market.jsp").forward(request,  response);
	}

}
