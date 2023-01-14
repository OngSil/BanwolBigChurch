package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import banwol.com.domain.News;
import banwol.com.vo.NewsVo;
import lombok.extern.log4j.Log4j;

//@Log4j
@Service
public interface NewsService {
	public List<News> getNewsList();
	public NewsVo getNewsDetails(int seqNo);
	public void newsWrite(String subject, String contents, String writer, String fileName);
	public void modifyNews(int seqNo, String subject, String contents, String writer, String filePath);
	public void deleteNews(int seqNo);
}
