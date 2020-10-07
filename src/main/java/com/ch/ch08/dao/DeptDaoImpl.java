package com.ch.ch08.dao;

import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.ch08.model.Dept;

@Repository
public class DeptDaoImpl implements DeptDao{
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Collection<Dept> list() {
		return sst.selectList("deptns.selectList");
	}

}
