package banwol.com.mapper;

import java.util.List;

import banwol.com.domain.News;
import banwol.com.vo.NewsVo;

public interface NewsMapper {
	List<News> getNewsList();
	NewsVo getNewsDetails(int seqNo);
	int getNextSeqNo();
	void newsWrite(NewsVo newsVo);
	void modifyNews(NewsVo newsVo);
	void deleteNews(int seqNo);
}