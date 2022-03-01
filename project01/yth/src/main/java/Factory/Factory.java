package Factory;

import Dao.CompanyDao;
import Dao.PorderDao;
import Model.Company;
import Model.Porder;

public class Factory {
private Company c;
private Porder p;
private CompanyDao cd;
private PorderDao pd;
public Factory(Company c, Porder p, CompanyDao cd, PorderDao pd) {
	super();
	this.c = c;
	this.p = p;
	this.cd = cd;
	this.pd = pd;
}
public Factory() {
	super();
	// TODO Auto-generated constructor stub
}
public Company getC() {
	return c;
}
public void setC(Company c) {
	this.c = c;
}
public Porder getP() {
	return p;
}
public void setP(Porder p) {
	this.p = p;
}
public CompanyDao getCd() {
	return cd;
}
public void setCd(CompanyDao cd) {
	this.cd = cd;
}
public PorderDao getPd() {
	return pd;
}
public void setOd(PorderDao pd) {
	this.pd = pd;
}


	
	
	
	
	
}
