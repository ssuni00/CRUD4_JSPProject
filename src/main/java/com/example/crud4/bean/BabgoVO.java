package com.example.crud4.bean;
import java.util.Date;

public class BabgoVO {
	private int BabgoID;
	private String BabgoName;
	private String BabgoDate;
	private String BabgoTime;
	private String BabgoDescription;
	private Date regdate;


	public int getBabgoID() {
		return BabgoID;
	}

	public void setBabgoID(int babgoID) {
		this.BabgoID = babgoID;
	}

	public String getBabgoName() {
		return BabgoName;
	}

	public void setBabgoName(String babgoName) {
		this.BabgoName = babgoName;
	}

	public String getBabgoDate() {
		return BabgoDate;
	}

	public void setBabgoDate(String babgoDate) {
		this.BabgoDate = babgoDate;
	}

	public String getBabgoTime() {
		return BabgoTime;
	}

	public void setBabgoTime(String babgoTime) {
		this.BabgoTime = babgoTime;
	}

	public String getBabgoDescription() {
		return BabgoDescription;
	}

	public void setBabgoDescription(String babgoDescription) {
		this.BabgoDescription = babgoDescription;
	}

	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}


