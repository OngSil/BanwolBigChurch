package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banwol.com.domain.About;
import banwol.com.domain.History;
import banwol.com.mapper.AboutMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AboutServiceImpl implements AboutService {
	@Autowired
	private AboutMapper aboutMapper;
	
	@Override
	public About getAboutInfo() {
		return aboutMapper.getAboutInfo();
	}
	
	@Override
	public List<History> getHistoryList() {
		return aboutMapper.getHistoryList();
	}

}
