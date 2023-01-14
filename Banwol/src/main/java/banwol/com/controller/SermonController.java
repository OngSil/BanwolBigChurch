package banwol.com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.domain.News;
import banwol.com.domain.Sermon;
import banwol.com.service.SermonService;
import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Log4j
@Controller
public class SermonController {
	@Autowired
	SermonService sermonService;

	@RequestMapping("sermon.do")
	public ModelAndView getSermonVideo() {
		ModelAndView mv = new ModelAndView();
		Sermon sermon = sermonService.getSermonVideo();
		mv.addObject("sermon", sermon);
		mv.setViewName("sermon");
		return mv;
	}

}
