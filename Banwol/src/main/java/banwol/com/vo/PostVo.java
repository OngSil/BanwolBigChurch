package banwol.com.vo;
import java.sql.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PostVo {
   private int seqNo;
   String userId;
   String subject;
   String contents;
   int  inquiryCnt;
   boolean attachments;
   Date createTime;
   
   public PostVo(int seqNo, String userId, String subject, String contents, int inquiryCnt, boolean attachments, Date createTime) {
      this.seqNo = seqNo;
      this.userId = userId;
      this.subject = subject;
      this.contents = contents;
      this.inquiryCnt = inquiryCnt;
      this.attachments = attachments;
      this.createTime = createTime;
   }
}