package banwol.com.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class About {
	private int seqNo;
	String userId;
	String subject;
	String contents;
	String miniCtt1;
	String miniCtt2;
	String miniCtt3;
	Date createTime;
}
