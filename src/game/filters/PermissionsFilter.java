package game.filters;

import game.entities.Player;
import game.stateless.PlayerService;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class ConnectionFilter
 */
@WebFilter("/ConnectionFilter")
public class PermissionsFilter implements Filter {
	
	@EJB private PlayerService ps;

    /**
     * Default constructor. 
     */
    public PermissionsFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		
		
		HttpServletRequest request = (HttpServletRequest) req;
		request.setCharacterEncoding("UTF-8");
		HttpServletResponse response = (HttpServletResponse) resp;
		
		request.setAttribute("title", "Game7");
		
		HttpSession session = request.getSession();
		String nickname = (String)session.getAttribute("nickname");
		
		String path = request.getRequestURI().substring(request.getContextPath().length());
		
		if (path.startsWith("/css")
				|| path.startsWith("/img")
				|| path.startsWith("/js")
				|| path.startsWith("/registration")) {
			chain.doFilter(request, response);
		} else if (nickname == null && path.startsWith("/ajax")) { // si c’est une requête aja
				response.setStatus(HttpServletResponse.SC_FORBIDDEN); // 403
		} else if (nickname == null) { // pour les autres pages, on sert le formulaire de connection
			request.getRequestDispatcher("/connection").forward(request, response);
		} else {
			Player player = ps.find(nickname);
			request.setAttribute("player", player);
			if (path.startsWith("/admin") && !(player.getPermissions() > 0)) {
				request.getRequestDispatcher("/home").forward(request, response);
			} else {
				chain.doFilter(request, response);
			}
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
