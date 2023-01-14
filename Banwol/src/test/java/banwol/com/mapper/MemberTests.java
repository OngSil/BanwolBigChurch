package banwol.com.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import banwol.com.domain.LikeTable;
import banwol.com.domain.Member;
//import banwol.com.mapper.MemberMapper;
//import banwol.com.service.LikeTableService;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTests {
	
	@Autowired
	//private MemberMapper memberMapper;
	
	//@Test
	public void testSelectByEmail() {
		try {
			//Member member = memberMapper.selectByEmail("a@a.com");
			//Member member = memberMapper.selectByEmail("z@a.com");
			
		} catch(Exception e) {
			e.printStackTrace();
			//없는 아이디인 경우에는 null이 반환된다.
		}
	}
	
	//@Test
	public void testCompareMemberPassword() {
		String member_password = "asdf";
		//Member member = memberMapper.selectByEmail("a@a.com");
		//if(member.getMember_password().equals(member_password)) {
		//	log.info("### return true");
		//}else {
		//	log.info("### return false");
		//}
	}
	
	@Autowired
	//private LikeTableService lts; 
	
	//@Test
	public void testInsertLikeTable() {
		LikeTable lt = new LikeTable();
		lt.setLike_content_index(1);
		lt.setLike_type_code(0);
		lt.setLike_member_email("a@a.com");
		
		//long testL = lts.setLikeNum(lt);
		//log.info("###: testL:"+testL);
	}
	
	//@Test
	public void testSelectByTypeAndContentIndex() {
		LikeTable lt = new LikeTable();
		lt.setLike_content_index(1);
		lt.setLike_type_code(0);
		lt.setLike_member_email("a@a.com");
		
		//long testL = lts.getLikeNumByTypeAndContentIndex(lt);
		//log.info("###: testL:"+testL);
	}
	
	@Test
	public void testDeleteLike() {
		LikeTable likeTable = new LikeTable();
		likeTable.setLike_content_index(1);
		likeTable.setLike_type_code(0);
		likeTable.setLike_member_email("a@a.com");
		
		//lts.deleteLike(likeTable);
		//log.info("###: del success");
	}
}
