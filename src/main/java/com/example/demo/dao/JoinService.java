package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import com.example.demo.model.Member;


public interface JoinService {
	List<Member> selectJoinList(HashMap<String, Object> map) throws Exception; // 데이터 호출을 위한 인터페이스
	int addMember(HashMap<String, Object> map); // 회원가입
	int getMemberCheck(HashMap<String, Object> map); // 중복체크
	int getMemberCheck2(HashMap<String, Object> map); // 중복체크
	int getMemberCheck3(HashMap<String, Object> map); // 중복체크
}
