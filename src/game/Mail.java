package game;

import javax.persistence.*;

@Entity

public class Mail {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	private String object;
	private String body;
	private String sender;
	private String receiver;
	
	public String getReceiver() { return receiver; }
	public void setReceiver(String receiver) { this.receiver = receiver; }
	
	public String getSender() { return this.sender; }
	public void setSender(String sender) { this.sender = sender; }
	
	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
	
	public String getObject() { return object; }
	public void setObject(String object) { this.object = object; }
	
	public String getBody() { return body; }
	public void setBody(String body) { this.body = body; }
}
