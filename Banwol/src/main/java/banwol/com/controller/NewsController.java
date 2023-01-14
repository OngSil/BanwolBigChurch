package banwol.com.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.json.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.domain.News;
import banwol.com.service.FileService;
import banwol.com.service.NewsService;
import banwol.com.vo.NewsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class NewsController {
	@Autowired
	NewsService newsService;
	
	@Autowired
	FileService fileService;

	@RequestMapping("news.do")
	public ModelAndView getBnwlNews() {
		// 첫번째 페이지 : 0 + 10개씩 뽑아올거임 + seqNo 오름차순 정렬
    	//Pageable pageable = PageRequest.of(0, 10, Sort.by("seqNo").descending());
		//Page<PostEntity> postEntityPage = postService.getAllPostInfo(pageable);
		
		//Page로 갖고와서 List로 바꿔쥼
		//List<PostEntity> postEntityList = postEntityPage.getContent();
		
		//총 페이지 수
		//int totalCnt = postEntityPage.getTotalPages();
		
		//현재 페이지(Active)
		//int currentPage = postEntityPage.getPageable().getPageNumber();
		

		ModelAndView mv = new ModelAndView();
		List<News> newsList = newsService.getNewsList();

		mv.addObject("news", newsList);
		
		//mv.addObject("totalCnt", totalCnt);
		//mv.addObject("currentPage", currentPage);
		//System.out.println("######현재페이지 나와라 오바: "+currentPage);

		mv.setViewName("news");
		return mv;
	}
	

	@RequestMapping("news_detail.do")
	public ModelAndView getNewsDetails(int seqNo) {
		NewsVo newsDetails = newsService.getNewsDetails(seqNo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("newsDetails", newsDetails);
		mv.setViewName("news_details");
		return mv;
	}
	
	@RequestMapping("go_news_write.do")
	public String goNewsWrite() {
		return "news_write";
	}
	
	@PostMapping("news_write.do")
	public ModelAndView newsWrite(MultipartHttpServletRequest multiRequest, HttpServletRequest req) throws Exception {
		String subject = req.getParameter("subject");
		String contents = req.getParameter("contents");
		String writer = req.getParameter("writer");
		String fileName = req.getParameter("fileName");
		
        //파일명 저장
        String filePath = "/testchurch/tomcat/webapps/upload/"+fileName;
        newsService.newsWrite(subject, contents, writer, filePath);
        
        //파일업로드
        fileService.uploadFile(multiRequest);
        
        ModelAndView mv = new ModelAndView();
        //News List 출력
        List<News> newsList = newsService.getNewsList();
		mv.addObject("news", newsList);
		
		//작성완료 여부
		mv.addObject("writeOk", "Y");
		mv.setViewName("news");
		return mv;
	}
	
	
	@RequestMapping("modify_news.do")
	public ModelAndView modifyNews(HttpServletRequest req) {
		String seqNoStr = req.getParameter("seqNo");
		int seqNo = Integer.parseInt(seqNoStr);
		String subject = req.getParameter("subject");
		String contents = req.getParameter("contents");
		String writer = req.getParameter("writer");
		String fileName = req.getParameter("fileName");
		
		String filePath = "";
		if ( fileName.length() > 0 ) {
			filePath = "/testchurch/tomcat/webapps/upload/"+fileName;
		}
		newsService.modifyNews(seqNo, subject, contents, writer, filePath);
		
		ModelAndView mv = new ModelAndView();
		List<News> newsList = newsService.getNewsList();

		mv.addObject("news", newsList);
		mv.setViewName("news");
		return mv;
	}
	
	@RequestMapping("delete_news.do")
	public ModelAndView deleteNews(int seqNo) {
		newsService.deleteNews(seqNo);
		
		ModelAndView mv = new ModelAndView();
		List<News> newsList = newsService.getNewsList();

		mv.addObject("news", newsList);
		mv.setViewName("news");
		return mv;
	}
}
