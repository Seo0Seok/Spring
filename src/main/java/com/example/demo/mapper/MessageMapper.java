package com.example.demo.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.model.Member;
import com.example.demo.model.Message;


@Mapper
public interface MessageMapper {
	Member getInfo(HashMap<String, Object> map) throws Exception; 
	List<Message> selectMessageList(HashMap<String, Object> map) throws Exception; // xml파일 접근 및 db 호출결과 리턴 받음
	
	List<Message> selectGotMessageList(HashMap<String, Object> map) throws Exception;
	
	List<Message> selectSendList(HashMap<String, Object> map) throws Exception;
	
	void deleteMessage(HashMap<String, Object> map);
	
}
