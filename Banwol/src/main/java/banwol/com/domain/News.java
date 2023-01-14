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
public class News {
   private int seqNo;
   String subject;
   String contents;
   String userId;
   Date createTime;
   int inquiryCnt;
   Boolean attachments;
}
