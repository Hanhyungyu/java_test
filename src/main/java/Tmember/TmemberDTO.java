package Tmember;

public class TmemberDTO {
	@Override
	public String toString() {
		return "TmemberDTO [num=" + bnum + ", name=" + name + ", tel=" + tel + ", id=" + id + ", pd=" + pd + "]";
	}
	public int getbNum() {
		return bnum;
	}
	public void setbNum(int num) {
		this.bnum = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPd() {
		return pd;
	}
	public void setPd(String pd) {
		this.pd = pd;
	}
	private int bnum;
	private String name;
	private String tel;
	private String id;
	private String pd;
	public TmemberDTO(int num, String name, String tel, String id, String pd) {
		super();
		this.bnum = num;
		this.name = name;
		this.tel = tel;
		this.id = id;
		this.pd = pd;
	}

	
	
	
	

}
