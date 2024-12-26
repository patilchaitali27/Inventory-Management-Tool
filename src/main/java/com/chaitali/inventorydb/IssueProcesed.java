package com.chaitali.inventorydb;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class IssueProcesed {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO )
	private int id;
	private int pid;
	private String pname;
	private String ipname;
	private int ipquantity;
	private String pissueDate;
	private String pissueTime;
	@Override
	public String toString() {
		return "IssueProcesed [id=" + id + ", pid=" + pid + ", pname=" + pname + ", ipname=" + ipname + ", ipquantity="
				+ ipquantity + ", pissueDate=" + pissueDate + ", pissueTime=" + pissueTime + "]";
	}
	public IssueProcesed() {
		super();
		// TODO Auto-generated constructor stub
	}
	public IssueProcesed(int id, int pid, String pname, String ipname, int ipquantity, String pissueDate,
			String pissueTime) {
		super();
		this.id = id;
		this.pid = pid;
		this.pname = pname;
		this.ipname = ipname;
		this.ipquantity = ipquantity;
		this.pissueDate = pissueDate;
		this.pissueTime = pissueTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getIpname() {
		return ipname;
	}
	public void setIpname(String ipname) {
		this.ipname = ipname;
	}
	public int getIpquantity() {
		return ipquantity;
	}
	public void setIpquantity(int ipquantity) {
		this.ipquantity = ipquantity;
	}
	public String getPissueDate() {
		return pissueDate;
	}
	public void setPissueDate(String pissueDate) {
		this.pissueDate = pissueDate;
	}
	public String getPissueTime() {
		return pissueTime;
	}
	public void setPissueTime(String pissueTime) {
		this.pissueTime = pissueTime;
	}
	
}
