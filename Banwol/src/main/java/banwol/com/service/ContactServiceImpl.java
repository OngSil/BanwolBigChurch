package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banwol.com.vo.ContactVo;
import banwol.com.mapper.ContactMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactMapper contactMapper;
	

	@Override
	public String contactUs(String name, String phone, String subject, String contents) {
		int nextSeqNo = contactMapper.getNextSeqNo();
		ContactVo contactVo = new ContactVo(nextSeqNo, name, phone, subject, contents, null, null);
		contactMapper.contactUs(contactVo);
		return "contact";
	}

}
