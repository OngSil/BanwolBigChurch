package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banwol.com.domain.About;
import banwol.com.domain.History;
import banwol.com.domain.Sermon;
import banwol.com.mapper.AboutMapper;
import banwol.com.mapper.SermonMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SermonServiceImpl implements SermonService {
	@Autowired
	private SermonMapper sermonMapper;
	
	@Override
	public Sermon getSermonVideo() {
		return sermonMapper.getSermonVideo();
	}

}
