package banwol.com.mapper;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import banwol.com.domain.Contact;
import banwol.com.vo.ContactVo;


public interface ContactMapper {
	int getNextSeqNo();
	void contactUs(ContactVo contactVo);
}