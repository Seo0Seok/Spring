package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import com.example.demo.model.Member;


public interface PwFindService {
	List<Member> selectPwFindList(HashMap<String, Object> map) throws Exception; // 데이터 호출을 위한 인터페이스
}
