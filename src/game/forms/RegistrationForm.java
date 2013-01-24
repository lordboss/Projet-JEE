package game.forms;

import game.entities.Player;
import game.stateless.PlayerService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;


public class RegistrationForm {
	
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
	
	public Player registryPlayer(PlayerService ps, HttpServletRequest request) {
		
		Player player = null;
		
		String firstname = request.getParameter("firstname");
		this.values.put("firstname", firstname);
		if (firstname == null || firstname.trim().length() < 2) {
			this.errors.put("firstname", "Le prénom doit contenir au moins 2 caractères.");
		} else {
			firstname = Jsoup.clean(firstname, Whitelist.simpleText());
		}
		
		String lastname = request.getParameter("lastname");
		this.values.put("lastname", lastname);
		if (lastname == null || lastname.trim().length() < 2) {
			this.errors.put("lastname", "Le nom de famille doit contenir au moins 2 caractères.");
		} else {
			lastname = Jsoup.clean(lastname, Whitelist.simpleText());
		}
		
		String email = request.getParameter("email");
		this.values.put("email", email);
		if (email == null || !email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) {
			this.errors.put("email", "Adresse email incorrecte.");
		} else {
			email = Jsoup.clean(email, Whitelist.simpleText());
		}
		
		String birth = request.getParameter("birth");
		this.values.put("birth", birth);
		Date birthdate = null;
		if (birth == null) {
			this.errors.put("birth", "La date de naissance doit être au format jj/mm/aaaa.");
		} else {
			try {
				birthdate = new SimpleDateFormat("dd/mm/yyyy").parse(birth);
			} catch (ParseException e) {
				this.errors.put("birth", "La date de naissance doit être au format jj/mm/aaaa.");
			}
		}
		if (birthdate != null && birthdate.after(new Date())) {
			this.errors.put("birth", "La date de naissance doit être antérieur à la date du jour.");
		}
		
		String city = request.getParameter("city");
		this.values.put("city", city);
		if (city == null || city.trim().length() < 2) {
			this.errors.put("city", "Le nom de la ville doit contenir au moins 2 caractères.");
		} else {
			city = Jsoup.clean(city, Whitelist.simpleText());
		}
		
		String country = request.getParameter("country");
		this.values.put("country", country);
		if (country == null || country.trim().length() < 2) {
			this.errors.put("country", "Le pays doit contenir au moins 2 caractères.");
		} else {
			country = Jsoup.clean(country, Whitelist.simpleText());
		}
		
		String nickname = request.getParameter("nickname");
		this.values.put("nickname", nickname);
		if (nickname == null || nickname.trim().length() < 2) {
			this.errors.put("nickname", "Le pseudo doit contenir au moins 2 caractères.");
		} else if (ps.find(nickname) != null) {
			this.errors.put("nickname", "Le pseudo spécifié n’est pas disponible.");
		} else {
			nickname = Jsoup.clean(nickname, Whitelist.simpleText());
		}
		
		String pwd = request.getParameter("password");
		this.values.put("password", pwd);
		if (pwd == null || pwd.trim().length() < 8) {
			this.errors.put("password", "Le mot de passe doit contenir au moins 8 caractères.");
		}
		
		String pwdconf = request.getParameter("passwordconf");
		this.values.put("passwordconf", pwdconf);
		if (pwdconf != null && pwd != null && !pwdconf.equals(pwd)) {
			this.values.put("password", pwd);
			this.errors.put("passwordconf", "La confirmation du mot de passe ne correspond pas.");
		}
		
		
		if (!this.errors.isEmpty()) {
			this.result = "Veuillez corriger les champs incorrects avant de pouvoir vous inscrire.";
		} else {
			player = ps.create(lastname, firstname, email, birthdate, city, country, nickname, pwd);
		}
		
		return player;
	}
	
}
