package com.care.boot.member;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface IMemberMapper {
	
	// 중복 체크
	MemberDTO login(String id);
	
	// 회원정보 등록 
	int registProc(MemberDTO member);
	
	// 회원정보 출력
	ArrayList<MemberDTO> memberInfo(@Param("begin")int begin, @Param("end")int end,
			@Param("select")String select, @Param("search")String search);

	int totalCount(@Param("select")String select, @Param("search")String search);

	// 회원정보 수정
	int updateProc(MemberDTO member);
	
	// 회원정보 삭제
	int deleteProc(String id);
	
}
