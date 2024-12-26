package com.chaitali.inventorydb;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueRaw {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO )
	private int id;
	private int rid;
	private String rname;
	private String iname;
	private int iquantity;
	private String issueDate;
	private String issueTime;
	@Override
	public String toString() {
		return "IssueRaw [id=" + id + ", rid=" + rid + ", rname=" + rname + ", iname=" + iname + ", iquantity="
				+ iquantity + ", issueDate=" + issueDate + ", issueTime=" + issueTime + "]";
	}
	public IssueRaw() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IssueRaw(int id, int rid, String rname, String iname, int iquantity, String issueDate, String issueTime) {
		super();
		this.id = id;
		this.rid = rid;
		this.rname = rname;
		this.iname = iname;
		this.iquantity = iquantity;
		this.issueDate = issueDate;
		this.issueTime = issueTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public int getIquantity() {
		return iquantity;
	}
	public void setIquantity(int iquantity) {
		this.iquantity = iquantity;
	}
	public String getIssueDate() {
		return issueDate;
	}
	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}
	public String getIssueTime() {
		return issueTime;
	}
	public void setIssueTime(String issueTime) {
		this.issueTime = issueTime;
	}
	
}
