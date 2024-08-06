package testboard;

public class testboardDTO {
	@Override
	public String toString() {
		return "testboardDTO [num=" + num + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regtime=" + regtime + "]";
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	private int num;
	private String title;
	private String writer;
	private String content;
	private String regtime;
	public testboardDTO(int num, String title, String writer, String content, String regtime) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regtime = regtime;
	}
	
	
	

}
