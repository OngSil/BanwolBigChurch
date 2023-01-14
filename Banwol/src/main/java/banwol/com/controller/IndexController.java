package banwol.com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.domain.About;
import banwol.com.domain.Album;
import banwol.com.domain.Sermon;
import banwol.com.service.AboutService;
import banwol.com.service.AlbumService;
import banwol.com.service.SermonService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Controller
@RequestMapping(value="/", method=RequestMethod.GET)
public class IndexController {
	
	@Autowired
	AboutService aboutService;
	AlbumService albumService;
	SermonService sermonService;

    @GetMapping
    public String home() {
        return "index";
    }
    
    @RequestMapping("index.do")
    public String index() {
        return "index";
    }
    
    //About Ajax
	@ResponseBody
	@RequestMapping("indexAbout.do")
	public About getIndexAbout(HttpSession session){ 
		About aboutInfo = aboutService.getAboutInfo();
		session.setAttribute("indexAbout", aboutInfo);
		return aboutInfo;
	}
	
	
    //Album Ajax
	@ResponseBody
	@RequestMapping(value="indexAlbum.do", method = RequestMethod.GET)
	public List<Album> getIndexAlbum(HttpSession session){ 
		List<Album> indexAlbumList = albumService.getThumbnailAlbum();
		session.setAttribute("indexAlbum", indexAlbumList);
		return indexAlbumList;
	}

    //Sermon Ajax
	@ResponseBody
	@RequestMapping(value="indexSermon.do", method = RequestMethod.GET)
	public Sermon getIndexSermon(HttpSession session){ 
		Sermon sermon = sermonService.getSermonVideo();
		session.setAttribute("indexSermon", sermon);
		return sermon;
	}
	

}
