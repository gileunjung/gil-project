package org.kebinet.service;

import java.util.List;

import org.kebinet.domain.MemberVO;



public interface MemberService {
	
	Long register(MemberVO member);
	
	List<MemberVO> getList();
	
	MemberVO get(Long bno);
	
	int modify(MemberVO member);
	
	int remove(Long bno);
	


}
