package Controller;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import Factory.Factory;
import Model.Porder;

public class updateUnfinishPorderController2 extends ActionSupport{

private String A;
private String AP;
private String B;
private String BP;
private String C;
private String CP;
private String D;
private String DP;
private String E;
private String EP;
private String shipd;
public String getA() {
	return A;
}
public void setA(String a) {
	A = a;
}
public String getAP() {
	return AP;
}
public void setAP(String aP) {
	AP = aP;
}
public String getB() {
	return B;
}
public void setB(String b) {
	B = b;
}
public String getBP() {
	return BP;
}
public void setBP(String bP) {
	BP = bP;
}
public String getC() {
	return C;
}
public void setC(String c) {
	C = c;
}
public String getCP() {
	return CP;
}
public void setCP(String cP) {
	CP = cP;
}
public String getD() {
	return D;
}
public void setD(String d) {
	D = d;
}
public String getDP() {
	return DP;
}
public void setDP(String dP) {
	DP = dP;
}
public String getE() {
	return E;
}
public void setE(String e) {
	E = e;
}
public String getEP() {
	return EP;
}
public void setEP(String eP) {
	EP = eP;
}
public String getShipd() {
	return shipd;
}
public void setShipd(String shipd) {
	this.shipd = shipd;
}
@Override 
public String execute() throws Exception{
	
Map<String,Object> m=ActionContext.getContext().getSession();
Porder p=(Porder)m.get("p");
if(A==null||A=="") {setA(p.getA());}else {p.setA(getA());}
if(AP==null||AP=="") {setAP(p.getAP());}else {p.setAP(getAP());}
if(B==null||B=="") {setB(p.getB());}else {p.setB(getB());}
if(BP==null||BP=="") {setBP(p.getBP());}else {p.setBP(getBP());}
if(C==null||C=="") {setC(p.getC());}else {p.setC(getCP());}
if(CP==null||CP=="") {setCP(p.getCP());}else {p.setCP(getCP());}
if(D==null||D=="") {setD(p.getD());}else {p.setD(getD());}
if(DP==null||DP=="") {setDP(p.getDP());}else {p.setDP(getDP());}
if(E==null||E=="") {setE(p.getE());}else {p.setE(getE());}
if(EP==null||EP=="") {setEP(p.getEP());}else {p.setEP(getEP());}
if(shipd==null||shipd=="") {setShipd(p.getShipd());}else {p.setShipd(getShipd());}	
Factory f=Dao.Connection.a1.getBean("f",Factory.class);
f.getPd().update(p);
m.put("p",p);
	
	
	
return "updatesuccess";	
}
	
	
	
}
