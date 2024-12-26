package com.chaitali.inventorydb;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class RawMaterial {
	@Id
	
	private int rid;
	private String rname;
	private int rquantity;
	private String runit;
	private float rcostPerUnit;
	@Override
	public String toString() {
		return "RawMaterial [rid=" + rid + ", rname=" + rname + ", rquantity=" + rquantity + ", runit=" + runit
				+ ", rcostPerUnit=" + rcostPerUnit + "]";
	}
	public RawMaterial() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RawMaterial(int rid, String rname, int rquantity, String runit, float rcostPerUnit) {
		super();
		this.rid = rid;
		this.rname = rname;
		this.rquantity = rquantity;
		this.runit = runit;
		this.rcostPerUnit = rcostPerUnit;
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
	public int getRquantity() {
		return rquantity;
	}
	public void setRquantity(int rquantity) {
		this.rquantity = rquantity;
	}
	public String getRunit() {
		return runit;
	}
	public void setRunit(String runit) {
		this.runit = runit;
	}
	public float getRcostPerUnit() {
		return rcostPerUnit;
	}
	public void setRcostPerUnit(float rcostPerUnit) {
		this.rcostPerUnit = rcostPerUnit;
	}
	
}
