package org.kebinet.mapper;

import java.util.List;

import org.kebinet.domain.MemberVO;

public interface MemberMapper {
	
	List<MemberVO> getList();
	
	void insert(MemberVO member);
	
	void insertSelectKey(MemberVO member);
	
	MemberVO read(Long bno);
	
	int update(MemberVO member);
	
	int delete(Long bno);

}
