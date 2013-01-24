package game.entities;

import game.embedded.Resources;

import javax.persistence.*;

@Entity
@Table(name="transactions")
public class Transaction {

	@Id @GeneratedValue(strategy=GenerationType.AUTO) 
	private int id;
	@ManyToOne
	private Player proposer;
	@Embedded
	private Resources offer;
	@Embedded
	@AttributeOverrides({
	    @AttributeOverride(name="stone",column=@Column(name="request_stone")),
	    @AttributeOverride(name="gold",column=@Column(name="request_gold")),
	    @AttributeOverride(name="argent",column=@Column(name="request_argent")),
	    @AttributeOverride(name="cuivre",column=@Column(name="request_cuivre")),
	    @AttributeOverride(name="metal",column=@Column(name="request_metal"))
	})
	private Resources request;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Player getProposer() {
		return proposer;
	}
	public void setProposer(Player proposer) {
		this.proposer = proposer;
	}
	public Resources getOffer() {
		return offer;
	}
	public void setOffer(Resources offer) {
		this.offer = offer;
	}
	public Resources getRequest() {
		return request;
	}
	public void setRequest(Resources request) {
		this.request = request;
	}
}
