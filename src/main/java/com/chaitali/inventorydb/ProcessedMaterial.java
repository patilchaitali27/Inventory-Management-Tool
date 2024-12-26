package com.chaitali.inventorydb;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class ProcessedMaterial {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO )
	private int pid;
	private String pname;
	private int pquantity;
	private String punit;
	private float pcostPerUnit;
	@Override
	public String toString() {
		return "ProcessedMaterial [pid=" + pid + ", pname=" + pname + ", pquantity=" + pquantity + ", punit=" + punit
				+ ", pcostPerUnit=" + pcostPerUnit + "]";
	}
	public ProcessedMaterial() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProcessedMaterial(int pid, String pname, int pquantity, String punit, float pcostPerUnit) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pquantity = pquantity;
		this.punit = punit;
		this.pcostPerUnit = pcostPerUnit;
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
	public int getPquantity() {
		return pquantity;
	}
	public void setPquantity(int pquantity) {
		this.pquantity = pquantity;
	}
	public String getPunit() {
		return punit;
	}
	public void setPunit(String punit) {
		this.punit = punit;
	}
	public float getPcostPerUnit() {
		return pcostPerUnit;
	}
	public void setPcostPerUnit(float pcostPerUnit) {
		this.pcostPerUnit = pcostPerUnit;
	}
	
}
