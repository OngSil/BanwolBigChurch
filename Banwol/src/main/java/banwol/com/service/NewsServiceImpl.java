package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import banwol.com.domain.News;
import banwol.com.mapper.NewsMapper;
import banwol.com.vo.NewsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class NewsServiceImpl implements NewsService {
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public List<News> getNewsList() {
		return newsMapper.getNewsList();
	}
	
	@Override
	public NewsVo getNewsDetails(int seqNo) {
		NewsVo newsDetails = newsMapper.getNewsDetails(seqNo);
		return newsDetails;
	}
	
	@Override
	public void newsWrite(String subject, String contents, String writer, String filePath) {
		NewsVo newsVo = new NewsVo();
		int seqNo = newsMapper.getNextSeqNo();
		newsVo.setSeqNo(seqNo);
		newsVo.setSubject(subject);
		newsVo.setContents(contents);
		newsVo.setContents(writer);
		newsVo.setImage(filePath);
		
		newsMapper.newsWrite(newsVo);
	}
	
	@Override
	public void modifyNews(int seqNo, String subject, String contents, String writer, String filePath) {
		NewsVo newsVo = new NewsVo();		
		newsVo.setSeqNo(seqNo);
		newsVo.setSubject(subject);
		newsVo.setContents(contents);
		newsVo.setUserId(writer);
		newsVo.setImage(filePath);
		
		newsMapper.modifyNews(newsVo);
	}
	
	
	@Override
	public void deleteNews(int seqNo) {
		newsMapper.deleteNews(seqNo);
	}

}
