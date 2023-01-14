package banwol.com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import banwol.com.service.ContactService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class ContactController {
	@Autowired
	ContactService contactService;


	@RequestMapping(value = "contact.do", method = RequestMethod.GET)
	public String contact() {
		return "contact";
	}

	
	@RequestMapping(value = "inquire.do", method = RequestMethod.POST)
	public String inquiry(@RequestParam("name") String name, @RequestParam("phone")String phone, @RequestParam("subject")String subject, @RequestParam("contents")String contents) {
		contactService.contactUs(name, phone, subject, contents);
		return "contact";
	}
		
}
