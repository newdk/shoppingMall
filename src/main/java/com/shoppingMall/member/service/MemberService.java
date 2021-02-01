package com.shoppingMall.member.service;

import javax.servlet.http.HttpServletResponse;

import com.shoppingMall.member.vo.MemberVO;

public interface MemberService {

	public int signUp(MemberVO membervo) throws Exception;
	public MemberVO login(MemberVO membervo) throws Exception;
	public int idCheck(String member_id) throws Exception;
	public MemberVO showInfo(String member_id) throws Exception;
	public MemberVO pwCheck(MemberVO membervo) throws Exception;
	public int updateMyInfo(MemberVO membervo) throws Exception;
	public boolean signOut(String member_id, HttpServletResponse response) throws Exception;
	public MemberVO adminLogin(MemberVO membervo) throws Exception;
}
