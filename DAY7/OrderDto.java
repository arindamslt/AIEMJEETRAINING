package master.dto;

public class OrderDto {
private int oid;
private String fid;
private String odt;
private int oqty;
public int getOid() {
	return oid;
}
public void setOid(int oid) {
	this.oid = oid;
}
public String getFid() {
	return fid;
}
public void setFid(String fid) {
	this.fid = fid;
}
public String getOdt() {
	return odt;
}
public void setOdt(String odt) {
	this.odt = odt;
}
public int getOqty() {
	return oqty;
}
public void setOqty(int oqty) {
	this.oqty = oqty;
}

}
