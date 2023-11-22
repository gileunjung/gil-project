package org.kebinet.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private Long bno;
	private String id, pw, name, phone;
	private Date regdate, updateDate;

}
