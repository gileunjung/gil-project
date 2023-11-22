package org.kebinet.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.kebinet.domain.MemberVO;
import org.kebinet.mapper.MemberMapperTests;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j

public class MemberMapperTests {
	
	@Autowired
	private MemberMapper mapper;
	
	@Test
	public void testGetList() {
		
		MemberVO vo = new MemberVO();
		vo.setId("22");
		vo.setPw("22");
		vo.setName("꽁지");
		vo.setPhone("22-22-22");
		
		log.info("-----");
		mapper.insert(vo);
	}
	
	

}
