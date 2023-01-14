package banwol.com.mapper;

import java.util.List;

import banwol.com.domain.Album;

public interface AlbumMapper {
	List<Album> getThumbnailAlbum();
	List<Album> getAllAlbum();
}