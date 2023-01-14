package banwol.com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.log4j.Log4j;

//@Log4j
@Service
public interface FileService {
	public void uploadFile(MultipartHttpServletRequest multiRequest) throws Exception;
}
