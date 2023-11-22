package org.kebinet.service;

import java.util.List;

import org.kebinet.domain.MemberVO;
import org.springframework.stereotype.Service;
import org.kebinet.mapper.MemberMapper;
import org.kebinet.service.MemberServiceImpl;

import lombok.RequiredArgsConstructor;
import lombok.ToString;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
@ToString

public class MemberServiceImpl implements MemberService{
	
	private final MemberMapper mapper;
	
	@Override
	public Long register(MemberVO member) {
		// TODO Auto-generated method stub
		//mapper.insert(member);
		mapper.insertSelectKey(member);
		return member.getBno();
	}

	@Override
	public List<MemberVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

	@Override
	public MemberVO get(Long bno) {
		// TODO Auto-generated method stub
		return mapper.read(bno);
	}

	@Override
	public int modify(MemberVO member) {
		// TODO Auto-generated method stub
		return mapper.update(member);
	}

	@Override
	public int remove(Long bno) {
		// TODO Auto-generated method stub
		return mapper.delete(bno);
	}



}
