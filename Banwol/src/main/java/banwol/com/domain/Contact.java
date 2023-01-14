package banwol.com.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Contact {
	private int seqNo;
	String name;
	String phone;
	String subject;
	String contents;
	Date createTime;
	Boolean answer_yn; 
}
