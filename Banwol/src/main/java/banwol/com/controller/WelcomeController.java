package banwol.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;
import lombok.extern.log4j.Log4j2;

@Log4j
@Controller
public class WelcomeController {
	
	//@Autowired
	//MemberService memberService;

	@RequestMapping("welcome.do")
	public String about_banwol() {
		return "welcome";
	}

}
