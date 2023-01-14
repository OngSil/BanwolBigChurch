package banwol.com.domain;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Album {
	private int seqNo;
	String userId;
	String image;
	String subject;
	String contents;
	Date albumDate;
	Date createTime;
}
