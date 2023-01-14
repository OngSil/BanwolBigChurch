package banwol.com.domain;

import java.sql.Date;
import java.text.DateFormat;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Sermon {
   private int seqNo;
   String address;
   String subject;
   String contents;
   String user_id;
   Date createTime;
   int inquiry_cnt;
}
