package banwol.com.mapper;

import java.util.List;

import banwol.com.domain.About;
import banwol.com.domain.History;

public interface AboutMapper {
	About getAboutInfo();
	List<History> getHistoryList();
}