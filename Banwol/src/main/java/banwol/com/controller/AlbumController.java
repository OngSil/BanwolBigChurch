package banwol.com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.domain.Album;
import banwol.com.service.AlbumService;
import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Log4j
@Controller
public class AlbumController {
	@Autowired
	AlbumService albumService;

	@RequestMapping("album.do")
	public ModelAndView getThumbnailAlbum() {
		ModelAndView mv = new ModelAndView();
		List<Album> albumList = albumService.getThumbnailAlbum();
		mv.addObject("albumList", albumList);
		mv.setViewName("album");
		return mv;
	}


    //About Ajax
	@ResponseBody
	@RequestMapping("allAlbum.do")
	public List<Album> getIndexAbout(HttpSession session){ //펀딩 실시간랭킹
		List<Album> albumList = albumService.getAllAlbum();
		session.setAttribute("allAlbum", albumList);
		return albumList;
	}

	

}
