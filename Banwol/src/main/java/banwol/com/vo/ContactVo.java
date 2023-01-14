package banwol.com.vo;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ContactVo {
	private int seqNo;
	String name;
	String phone;
	String subject;
	String contents;
	Date createTime;
	Boolean answer_yn; 
	
	public ContactVo(int seqNo, String name, String phone, String subject, String contents, Date createTime, Boolean answer_yn) {
		this.seqNo = seqNo;
		this.name = name;
		this.phone = phone;
		this.subject = subject;
		this.contents = contents;
		this.createTime = createTime;
		this.answer_yn = answer_yn;
	}

}


