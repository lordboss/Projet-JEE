package game;

/* A building and its upgraded building */

public class Buildings {

	private Building building;
	private Building upgradedBuilding;
	
	public Buildings(Building building, Building upgradedBuilding) {
		this.building = building;
		this.upgradedBuilding = upgradedBuilding;
	}
	
	public Building getBuilding() {
		return building;
	}

	public void setBuilding(Building building) {
		this.building = building;
	}
	
	public Building getUpgradedBuilding() {
		return upgradedBuilding;
	}

	public void setUpgradedBuilding(Building upgradedBuilding) {
		this.upgradedBuilding = upgradedBuilding;
	}
	
}
