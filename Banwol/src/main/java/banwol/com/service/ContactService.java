package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banwol.com.domain.About;
import banwol.com.domain.History;
import lombok.extern.log4j.Log4j;

//@Log4j
@Service
public interface ContactService {
	public String contactUs(String name, String phone, String subject, String contents);
}
