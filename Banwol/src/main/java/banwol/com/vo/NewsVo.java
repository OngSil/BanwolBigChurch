package banwol.com.vo;
import java.sql.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class NewsVo {
   private int seqNo;
   String subject;
   String contents;
   String image;
   String userId;
   Date createTime;
   int inquiryCnt;
   Boolean attachments;
   
   public NewsVo(int seqNo, String subject, String contents, String image, String userId, Date createTime, int inquiryCnt, Boolean attachments) {
      this.seqNo = seqNo;
      this.subject = subject;
      this.contents = contents;
      this.image = image;
      this.userId = userId;
      this.createTime = createTime;
      this.inquiryCnt = inquiryCnt;
      this.attachments = attachments;
   }
}

