package game.entities;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="mails")
public class Mail {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	private Date date;
	private String topic;
	private String body;
	@ManyToOne
	private Player sender;
	@ManyToOne
	private Player recipient;
	
	public Mail() {
		this.setDate(new Date());
	}
	
	public Player getRecipient() { return recipient; }
	public void setRecipient(Player recipient) { this.recipient = recipient; }
	
	public Player getSender() { return this.sender; }
	public void setSender(Player sender) { this.sender = sender; }
	
	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
	
	public String getTopic() { return topic; }
	public void setTopic(String topic) { this.topic = topic; }
	
	public String getBody() { return body; }
	public void setBody(String body) { this.body = body; }

	public Date getDate() { return date; }
	public void setDate(Date date) { this.date = date; }
}
