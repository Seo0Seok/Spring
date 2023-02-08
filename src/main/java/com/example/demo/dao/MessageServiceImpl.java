package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.mapper.MessageMapper;
import com.example.demo.model.Message;


@Service //서비스임을 선언
public class MessageServiceImpl implements MessageService{

	@Autowired //Mapper와 연결
	private MessageMapper messageMapper;

	// 인터페이스 구체화
	@Override
	public List<Message> selectMessageList() throws Exception {
		// TODO Auto-generated method stub
		return messageMapper.selectMessageList(); // db를 호출하는 mapper와 연결
	}
}