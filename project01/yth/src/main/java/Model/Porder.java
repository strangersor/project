package Model;



import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="porder")
public class Porder {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id;
	String nickname;
	String A;
	String AP;
	String B;
	String BP;
	String C;
	String CP;
	String D;
	String DP;
	String E;
	String EP;
	String status;
	Integer porderd;
	String pordern;
	String shipd;
	public Porder() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Porder(String nickname, String a, String aP, String b, String bP, String c, String cP, String d, String dP,
			String e, String eP, String status, Integer porderd, String pordern, String shipd) {
		super();
		this.nickname = nickname;
		A = a;
		AP = aP;
		B = b;
		BP = bP;
		C = c;
		CP = cP;
		D = d;
		DP = dP;
		E = e;
		EP = eP;
		this.status = status;
		this.porderd = porderd;
		this.pordern = pordern;
		this.shipd = shipd;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getPorderd() {
		return porderd;
	}
	public void setPorderd(Integer porderd) {
		this.porderd = porderd;
	}
	public String getPordern() {
		return pordern;
	}
	public void setPordern(String pordern) {
		this.pordern = pordern;
	}
	public String getShipd() {
		return shipd;
	}
	public void setShipd(String shipd) {
		this.shipd = shipd;
	}
	
	public void setPorderD() {
	DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyyMMddhhmm");
		DateTimeFormatter dtf2=DateTimeFormatter.ofPattern("yyyyMMdd");
		LocalDateTime t=LocalDateTime.now();
		 String pordern=t.format(dtf);
		 String porderd=t.format(dtf2);
		Integer d=Integer.parseInt(porderd);
		this.porderd =d;
		this.pordern=pordern;
	}
	public String show() {
		if(this.status.contains("unfinish")){return "未出貨";}
		else{return "已出貨";}
		
		
		
	}
public  void setUnfinishStatus() {
		
		this.status="unfinish";
		
	}

	
	
}