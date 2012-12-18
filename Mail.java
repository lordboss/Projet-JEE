package browsergame;

import javax.persistence.*;

@Entity
public abstract class Mail {

	@Id private int id;
	private String object;
	private String body;
	
	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
	
	public String getObject() { return object; }
	public void setObject(String object) { this.object = object; }
	
	public String getBody() { return body; }
	public void setBody(String body) { this.body = body; }
}
