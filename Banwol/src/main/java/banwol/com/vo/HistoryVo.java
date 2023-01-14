package banwol.com.vo;
import java.sql.Date;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class HistoryVo {
   private int seqNo;
   String userId;
   String contents;
   Date createTime;
   Date historyDate;
   
   public HistoryVo(int seqNo, String userId, String contents, Date createTime, Date historyDate) {
      this.seqNo = seqNo;
      this.userId = userId;
      this.contents = contents;
      this.historyDate = historyDate;
      this.createTime = createTime;
   }
}

