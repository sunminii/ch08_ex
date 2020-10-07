package com.ch.ch08.service;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.ch08.dao.DeptDao;
import com.ch.ch08.model.Dept;

@Service
public class DeptServiceImpl implements DeptService{
	
	@Autowired
	private DeptDao dd;
	
	@Override
	public Collection<Dept> list() {
		return dd.list();
	}

}
