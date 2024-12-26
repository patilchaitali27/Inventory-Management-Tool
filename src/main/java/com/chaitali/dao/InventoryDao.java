package com.chaitali.dao;

import java.util.List;

import javax.persistence.NamedQuery;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.chaitali.inventorydb.IssueProcesed;
import com.chaitali.inventorydb.IssueRaw;
import com.chaitali.inventorydb.Manager;
import com.chaitali.inventorydb.ProcessedMaterial;
import com.chaitali.inventorydb.RawMaterial;

@Component
public class InventoryDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;

	public InventoryDao() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InventoryDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	@Transactional
	public int insertRaw(RawMaterial rawMaterial) 
	{
		int i=(Integer) hibernateTemplate.save(rawMaterial);
		return i;
	}

	public RawMaterial viewOneRaw(int rid) 
	{
		return (RawMaterial) this.hibernateTemplate.get(RawMaterial.class,rid);
	}
	public List<RawMaterial> viewAllRawMaterial() 
	{
		List<RawMaterial> r=this.hibernateTemplate.loadAll(RawMaterial.class);
		return r;
	}
	@Transactional
	public void deleteRaw(int rid) 
	{
		RawMaterial r=hibernateTemplate.get(RawMaterial.class, rid);
		hibernateTemplate.delete(r);
	}
	@Transactional
	public void updateRaw(RawMaterial rawMaterial) 
	{
		hibernateTemplate.update(rawMaterial);
	}
	@Transactional
	public int insertProcessed(ProcessedMaterial processedMaterial) 
	{
		int i= (Integer) hibernateTemplate.save(processedMaterial);
		return i;
	}

	public ProcessedMaterial viewOneProcessed(int pid) 
	{
		return (ProcessedMaterial) this.hibernateTemplate.get(ProcessedMaterial.class,pid);
	}

	public List<ProcessedMaterial> viewAllProcessedMaterial() 
	{
		List<ProcessedMaterial> p=this.hibernateTemplate.loadAll(ProcessedMaterial.class);
		return p;
	}
	@Transactional
	public void deleteProcessed(int pid) 
	{
		ProcessedMaterial p=hibernateTemplate.get(ProcessedMaterial.class, pid);
		hibernateTemplate.delete(p);
	}
	@Transactional
	public void updateProcessed(ProcessedMaterial processedMaterial) 
	{
		hibernateTemplate.update(processedMaterial);
	}
	@Transactional
	public int insertIssue(IssueRaw issueRaw) 
	{
		int i= (Integer) hibernateTemplate.save(issueRaw);
		return i;
	}

	public IssueRaw viewOneIssue(int id) 
	{
		return (IssueRaw) this.hibernateTemplate.get(IssueRaw.class,id);
	}
	@Transactional
	public void updateIssueRaw(IssueRaw issueRaw) 
	{
		hibernateTemplate.update(issueRaw);
	}

	public List<IssueRaw> viewAllIssue() 
	{
		List<IssueRaw> i=this.hibernateTemplate.loadAll(IssueRaw.class);
		return i;
	}
	@Transactional
	public String insertManager(Manager manager) 
	{
		String i= (String) hibernateTemplate.save(manager);
		return i;
	}
	public Manager viewManager(String email) 
	{
		return (Manager) this.hibernateTemplate.get(Manager.class,email);
	}
	@Transactional
	public void updateManager(Manager manager) 
	{
		hibernateTemplate.update(manager);
	}
	@Transactional
	public int insertIssue(IssueProcesed issueProcessed) 
	{
		int i= (Integer) hibernateTemplate.save(issueProcessed);
		return i;
	}
	public IssueProcesed viewOneIssueP(int id) 
	{
		return (IssueProcesed) this.hibernateTemplate.get(IssueProcesed.class,id);
	}
	@Transactional
	public void updateIssueProcessed(IssueProcesed issueProcessed) 
	{
		hibernateTemplate.update(issueProcessed);
	}

	public List<IssueProcesed> viewAllIssueProcessed() 
	{
		List<IssueProcesed> i=this.hibernateTemplate.loadAll(IssueProcesed.class);
		return i;
	}
	public List<RawMaterial> showUnavailableRaw()
	{
		String query="from RawMaterial where rquantity=0 ";
		return (List<RawMaterial>) hibernateTemplate.find(query);
	}
	public List<ProcessedMaterial> showUnavailableProcessed()
	{
		String query="from ProcessedMaterial where pquantity=0 ";
		return (List<ProcessedMaterial>) hibernateTemplate.find(query);
	}
}
