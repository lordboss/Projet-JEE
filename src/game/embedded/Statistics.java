package game.embedded;

import javax.persistence.*;


@Embeddable @Access(AccessType.FIELD)
public class Statistics {

	private int rank;
	private int points;
	private int mailCount;
	private int mailUnread;
	
	/*public Statistics() {
		this.rank = 0;
		this.points = 0;
		this.unread = 0;
	}*/
	
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}

	public int getMailUnread() {
		return mailUnread;
	}

	public void setMailUnread(int mailUnread) {
		this.mailUnread = mailUnread;
	}
	
	public void newMail() {
		mailCount++;
		mailUnread++;
	}
	
	public void delMail() {
		mailCount--;
	}
	
	public int getMailCount() {
		return mailCount;
	}
	public void setMailCount(int mailCount) {
		this.mailCount = mailCount;
	}
	
}
