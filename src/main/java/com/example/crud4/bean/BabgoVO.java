package com.example.crud4.bean;
import java.util.Date;

public class BabgoVO {
	private int BabgoID;
	private String BabgoName;
	private String BabgoDate;
	private String BabgoTime;
	private String Description;
	private Date regdate;


	public int getBabgoID() {
		return BabgoID;
	}

	public void setBabgoID(int BabgoID) {

		this.BabgoID = BabgoID;
	}

	public String getBabgoName() {
		return BabgoName;
	}

	public void setBabgoName(String BabgoName) {

		this.BabgoName = BabgoName;
	}

	public String getBabgoDate() {

		return BabgoDate;
	}

	public void setBabgoDate(String BabgoDate) {

		this.BabgoDate = BabgoDate;
	}

	public String getBabgoTime() {

		return BabgoTime;
	}

	public void setBabgoTime(String BabgoTime) {

		this.BabgoTime = BabgoTime;
	}

	public String getDescription() {
		return Description;
	}

	public void setDescription(String Description) {

		this.Description = Description;
	}

	public Date getRegdate() {
		return
				regdate;
	}
	public void setRegdate(Date regdate) {

		this.regdate = regdate;
	}
}


