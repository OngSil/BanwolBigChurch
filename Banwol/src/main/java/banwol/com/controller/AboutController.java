package banwol.com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.domain.About;
import banwol.com.domain.History;
import banwol.com.service.AboutService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class AboutController {
	@Autowired
	private AboutService aboutservice;
	
	@Autowired
	AboutService aboutService;
	
	@RequestMapping("about.do")
	public ModelAndView getAboutInfo(@RequestParam int seq_no) {	
		About aboutInfo = aboutService.getAboutInfo();
		List<History> historyList = aboutService.getHistoryList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("about", aboutInfo);
		mv.addObject("history", historyList);
		mv.setViewName("about");
		return mv;
	}
	
}
