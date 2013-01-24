package game.forms;

import game.entities.Player;
import game.stateless.PlayerService;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public class ConnectionForm {
	
	private String result;
	private Map<String, String> values = new HashMap<String, String>();
	private Map<String, String> errors = new HashMap<String, String>();
	
	public String getResult() {
		return this.result;
	}
	
	public Map<String, String> getValues() {
		return this.values;
	}
	
	public Map<String, String> getErrors() {
		return this.errors;
	}
	
	public Player connectPlayer(PlayerService ps, HttpServletRequest request) {
		
		Player player = null;
		
		String nickname = request.getParameter("nickname");
		this.values.put("nickname", nickname);
		if (nickname == null || (player = ps.find(nickname)) == null) {
			this.errors.put("nickname", "Pseudo incorrect.");
		}
		
		String pwd = request.getParameter("password");
		if (player != null && (pwd == null || !ps.checkPwd(player, pwd))) {
			this.errors.put("password", "Mot de passe incorrect.");
		}
		
		if (!this.errors.isEmpty()) {
			player = null;
			this.result = "Echec de l’authentification.";
		}
		return player;
	}
	
}
