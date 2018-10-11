package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Emp;

// 디비와 대화하는 클래스는 관습적으로 인터페이스를 두고 구현 클래스를 따로 작성한다.
// 왜냐하면, 연동하는 디비가 자주 변경되기 때문이다.
// DAO(Data Access Object)
public interface EmpDao {
	public int insert(Emp emp); // 한 행 추가, 성공 시 1을 리턴 
	public int update(Emp emp); // 한 행 수정, 성공 시 1을 리턴
	public int delete(int empno); // 한 행 삭제, 성공 시 1을 리턴
	
	public int count(); // 테이블의 전체 로우의 개수를 리턴
	public List<Emp> findAll(); // 테이블의 전체 로우 정보를 리턴
	public Emp findOne(int empno); // 한 행 정보를 리턴 
	
	
	
}
