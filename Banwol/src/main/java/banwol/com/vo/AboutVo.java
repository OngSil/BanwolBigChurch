package banwol.com.vo;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AboutVo {
	private int seqNo;
	String userId;
	String subject;
	String contents;
	String miniCtt1;
	String miniCtt2;
	String miniCtt3;
	Date createTime;
	
	public AboutVo(int seqNo, String userId, String subject, String contents, String miniCtt1, String miniCtt2, String miniCtt3, String createTime, Date creatDateTime) {
		this.seqNo = seqNo;
		this.userId = userId;
		this.subject = subject;
		this.contents = contents;
		this.miniCtt1 = miniCtt1;
		this.miniCtt2 = miniCtt2;
		this.miniCtt3 = miniCtt3;
		this.createTime = creatDateTime;
	}

}


