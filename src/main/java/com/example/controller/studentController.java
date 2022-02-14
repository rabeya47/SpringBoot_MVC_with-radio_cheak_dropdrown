package com.example.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.studentModel;
import com.example.repository.studentRepo;

@Controller
public class studentController {
	@Autowired studentRepo stuRepo;

	
	@GetMapping("/")
	public ModelAndView index() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<studentModel> stuList = (List<studentModel>) stuRepo.findAll();
		map.put("studentList", stuList);
		return new ModelAndView("index","data",map);
	}
	
	
	@GetMapping("/add_student")
	public ModelAndView add() {
		Map<String, Object> map = new HashMap<String, Object>();
		
		return new ModelAndView("add_student", "data",map);
	}
	
	
	@PostMapping("/save")
	public ModelAndView save(@ModelAttribute studentModel student, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			student = stuRepo.save(student);
			map.put("student", student);
			map.put("status", "success");
			map.put("message", "Data save successfully");
		}catch(Exception e) {
			map.put("status", "failed");
			map.put("message", "Data save failed");
		}
		return new ModelAndView("add_student", "data" ,map);
	}
	
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable(value = "id") Integer id) {
		Map<String, Object> map = new HashMap<String, Object>();
		studentModel student = stuRepo.findById(id).get();
		map.put("student", student);
		return new ModelAndView("edit_student","data",map);
	}
	
	
	@PostMapping("/update")
	public ModelAndView update(@ModelAttribute studentModel student, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			student = stuRepo.save(student);
			map.put("student", student);
			map.put("status", "success");
			map.put("message", "Data update successfully");
		}catch(Exception e) {
			map.put("status", "failed");
			map.put("message", "Data update failed");
		}
		return new ModelAndView("edit_student","data", map);
	}
	
	

	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable(value = "id") Integer id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			studentModel student = stuRepo.findById(id).get();
			stuRepo.delete(student);
			map.put("message", "Data deleted");
		}catch(Exception e) {
			map.put("message", "Data deleted failed");
		}
		return new ModelAndView("redirect:/");
	}
	
}
