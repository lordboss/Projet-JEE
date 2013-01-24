package game.stateless;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import game.embedded.Resources;
import game.entities.Player;
import game.entities.Transaction;

public interface TransactionService {
	
	public int parseForm(HttpServletRequest request);
	public List<Transaction> getTransactions();
	public boolean proposeTransaction(Player proposer, Resources offer, Resources request);
	public int acceptTransaction(Player approver, int id);
	
}
