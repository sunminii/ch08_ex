package com.ch.ch08.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.ch08.model.Dept;
import com.ch.ch08.service.DeptService;

@Controller
public class DeptController {
	
	@Autowired
	private DeptService ds;
	
	@RequestMapping("deptList")
	public String deptList(Model model) {
		
		Collection<Dept> list = ds.list();
		model.addAttribute("list", list); //list를 model에 담아서 jsp로 전달
		
		return "/dept/deptList";
	}
	
	
	
}
