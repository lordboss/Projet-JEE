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


public class UpdateProfileForm {
	
	private Map<String, String> messages = new HashMap<String, String>();
	private Map<String, String> types = new HashMap<String, String>();
	
	public Map<String, String> getMessages() {
		return this.messages;
	}
	
	public Map<String, String> getTypes() {
		return this.types;
	}
	
	public void updatePlayer(PlayerService ps, HttpServletRequest request) {
		
		Player player = (Player) request.getAttribute("player");
		
		String firstname = Jsoup.clean(request.getParameter("firstname"), Whitelist.simpleText());
		if (firstname == null || firstname.trim().length() < 2) {
			this.messages.put("firstname", "Le prénom doit contenir au moins 2 caractères.");
			this.types.put("firstname", "error");
		} else if (!firstname.equals(player.getInformation().getFirstname())) {
			this.messages.put("firstname", "Prénom mis à jour.");
			this.types.put("firstname", "success");
			player.getInformation().setFirstname(firstname);
		}

		String lastname = Jsoup.clean(request.getParameter("lastname"), Whitelist.simpleText());
		if (lastname == null || lastname.trim().length() < 2) {
			this.messages.put("lastname", "Le nom doit contenir au moins 2 caractères.");
			this.types.put("lastname", "error");
		} else if (!lastname.equals(player.getInformation().getLastname())) {
			this.messages.put("lastname", "Nom mis à jour.");
			this.types.put("lastname", "success");
			player.getInformation().setLastname(lastname);
		}
		
		String email = Jsoup.clean(request.getParameter("email"), Whitelist.simpleText());
		if (email == null || !email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")) {
			this.messages.put("email", "Adresse email incorrecte.");
			this.types.put("email", "error");
		} else if (!email.equals(player.getInformation().getEmail())) {
			this.messages.put("email", "Adresse email mise à jour.");
			this.types.put("email", "success");
			player.getInformation().setEmail(email);
		}

		String birth = request.getParameter("birth");
		if (birth != null) {
			Date birthdate;
			try {
				birthdate = new SimpleDateFormat("dd/mm/yyyy").parse(birth);
				if (birthdate.compareTo(player.getInformation().getBirthdate()) != 0) {
					this.messages.put("birth", "La date de naissance a été mise à jour.");
					this.types.put("birth", "success");
					player.getInformation().setBirthdate(birthdate);
				}
			} catch (ParseException e) {
				this.messages.put("birth", "La date de naissance doit être au format jj/mm/aaaa.");
				this.types.put("birth", "error");
			}
		}
		
		String city = Jsoup.clean(request.getParameter("city"), Whitelist.simpleText());
		if (city == null || city.trim().length() < 2) {
			this.messages.put("city", "Le nom de la ville doit contenir au moins 2 caractères.");
			this.types.put("city", "error");
		} else if (!city.equals(player.getInformation().getCity())) {
			this.messages.put("city", "Ville mise à jour.");
			this.types.put("city", "success");
			player.getInformation().setCity(city);
		}
		
		String country = Jsoup.clean(request.getParameter("country"), Whitelist.simpleText());
		if (country == null || country.trim().length() < 2) {
			this.messages.put("country", "Le pays doit contenir au moins 2 caractères.");
			this.types.put("country", "error");
		} else if (!country.equals(player.getInformation().getCountry())) {
			this.messages.put("country", "Pays mise à jour.");
			this.types.put("country", "success");
			player.getInformation().setCountry(country);
		}
		
		boolean pwdchange = false;
		String pwd = request.getParameter("password");
		if (pwd != null && pwd.trim().length() > 0) {
			if (pwd.trim().length() < 8) {
				this.messages.put("password", "Le mot de passe doit contenir au moins 8 caractères.");
				this.types.put("password", "error");
			} else {
				pwdchange = true;
			}
		}
		
		String pwdconf = request.getParameter("passwordconf");
		if (pwdconf != null && pwdchange) {
			if (pwdconf.equals(pwd)) {
				this.types.put("passwordconf", "success");
				this.messages.put("passwordconf", "Mot de passe modifié avec succès.");
				player.setPassword(pwd);
			} else {
				this.types.put("passwordconf", "error");
				this.messages.put("passwordconf", "La confirmation du mot de passe ne correspond pas.");
			}
		}
		
		ps.updatePlayer(player);
	}
	
}
