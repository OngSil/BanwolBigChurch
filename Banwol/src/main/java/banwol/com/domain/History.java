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
public class History {
   private int seqNo;
   String userId;
   String contents;
   Date createTime;
   Date historyDate;
}
