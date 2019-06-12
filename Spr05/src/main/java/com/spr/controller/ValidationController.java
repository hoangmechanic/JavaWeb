package com.spr.controller;

import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spr.bean.Position;
import com.spr.bean.Staff;

@Controller
public class ValidationController {
	@RequestMapping("validation/form")
	public String index(Model model) {
		model.addAttribute("hobbies",getHobies());
		model.addAttribute("positions",getPositions());
		return "validation/form";
	}

	@RequestMapping("save.php")
	public String save(Model model, @ModelAttribute("staff") Staff staff) {
		return "advanceForm";
	}

	private Map<String,String> getPositions() {
		Map<String,String> map = new HashMap<>();
		map.put("MAN","Manager");
		map.put("EMP","Employee");
		return map;
	}

	@ModelAttribute("hobbies")
	public List<String> getHobies(){
		List<String> list = new ArrayList<>();
		list.add("Travelling");
		list.add("Music");
		list.add("Food");
		list.add("Others");
		return list;
	}
}

