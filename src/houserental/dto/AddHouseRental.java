package houserental.dto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class AddHouseRental {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer userId;
	@Column(nullable=false)
	private String house;
	@Column(nullable=false)
	private String squareFeet;
	@Column(nullable=false)
	private String rentalCost;
	@Column(nullable=false)
	private String parkingAvaliable;
	@Column(nullable=false)
	private String garden;
	@Column(nullable=false)
	private String address;
	public AddHouseRental() {
		super();
	}
	public AddHouseRental(Integer userId,String house, String squareFeet, String rentalCost, String parkingAvaliable, String garden,
			String address) {
		super();
		this.userId=userId;
		this.house = house;
		this.squareFeet = squareFeet;
		this.rentalCost = rentalCost;
		this.parkingAvaliable = parkingAvaliable;
		this.garden = garden;
		this.address = address;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getSquareFeet() {
		return squareFeet;
	}
	public void setSquareFeet(String squareFeet) {
		this.squareFeet = squareFeet;
	}
	public String getRentalCost() {
		return rentalCost;
	}
	public void setRentalCost(String rentalCost) {
		this.rentalCost = rentalCost;
	}
	public String getParkingAvaliable() {
		return parkingAvaliable;
	}
	public void setParkingAvaliable(String parkingAvaliable) {
		this.parkingAvaliable = parkingAvaliable;
	}
	public String getGarden() {
		return garden;
	}
	public void setGarden(String garden) {
		this.garden = garden;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "AddHouseRental [userId=" + userId + ", house=" + house + ", squareFeet=" + squareFeet + ", rentalCost="
				+ rentalCost + ", parkingAvaliable=" + parkingAvaliable + ", garden=" + garden + ", address=" + address
				+ "]";
	}
}
