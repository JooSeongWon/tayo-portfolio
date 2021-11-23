package fun.tayo.app.dao;

import fun.tayo.app.dto.Member;
import fun.tayo.app.dto.MemberJoinParam;

public interface MemberDao {


	Member selectByEmail(String email);


	int selectCntByEmail(Member member);


	void insert(Member member);
	
	void kakaoinsert(Member member);


	Integer selectProfileById(Integer memberId);


	void create(Member member);


	void updateAuthkey(Member member); 
	
	
}
