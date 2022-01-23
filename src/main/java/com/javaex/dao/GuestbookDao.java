package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.GuestbookVo;

@Repository
public class GuestbookDao {
	
	@Autowired
	private SqlSession sqlSession;

	public List<GuestbookVo> getList() {
		
		List<GuestbookVo> gList = sqlSession.selectList("guestbook.getList");
		return gList;
	}
	
	public int guestInsert(GuestbookVo gvo) {
		
		return sqlSession.insert("guestbook.insert", gvo);
		
	}
	
	public int guestDelete(int no, String pass) {
		
		GuestbookVo gvo = new GuestbookVo();
		gvo.setNo(no);
		gvo.setPassword(pass);
		
		return sqlSession.delete("guestbook.delete", gvo);
	}
}
