package banwol.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import banwol.com.domain.About;
import banwol.com.domain.Album;
import banwol.com.domain.History;
import banwol.com.mapper.AboutMapper;
import banwol.com.mapper.AlbumMapper;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AlbumServiceImpl implements AlbumService {
	@Autowired
	private AlbumMapper albumMapper;
	
	@Override
	public List<Album> getThumbnailAlbum() {
		return albumMapper.getThumbnailAlbum();
	}
	
	@Override
	public List<Album> getAllAlbum() {
		return albumMapper.getAllAlbum();
	}

}
