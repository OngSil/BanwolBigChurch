package banwol.com.service;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import banwol.com.domain.News;
import banwol.com.mapper.NewsMapper;
import banwol.com.vo.NewsVo;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class FileServiceImpl implements FileService {
	@Autowired
	private NewsMapper newsMapper;

	@Override
	public void uploadFile(MultipartHttpServletRequest multiRequest) throws Exception {
		Map<String, MultipartFile> files = multiRequest.getFileMap();
		
		Iterator<Map.Entry<String, MultipartFile>> itr = files.entrySet().iterator();
		
		MultipartFile mFile = null;
		//String filePath = "C:\\"+"Java\\"+"test\\"; // 파일 업로드 경로
		String filePath = "/testchurch/tomcat/webapps/upload/";
		
		while(itr.hasNext()) {
			Map.Entry<String, MultipartFile> entry = itr.next();
			
			mFile = entry.getValue();
			String fileOrgName = mFile.getOriginalFilename();
			
			if ( !fileOrgName.isEmpty() ) {
				File fileFolder = new File(filePath);
				
				File saveFile = new File(filePath, fileOrgName);
				mFile.transferTo(saveFile);
			}
			
		}
	}
	

}
