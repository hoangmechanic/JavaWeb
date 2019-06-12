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
@RequestMapping("staff")
public class StaffController {
	@RequestMapping("form")
	public String index(Model model) {
		Staff staff = new Staff();
		model.addAttribute("staff",staff);
		//model.addAttribute("view","staff/form");
		staff.setFullName("Nguyễn Duy Hoàng");
		staff.setGender(true);
		return "Simpleform";
	}

	@RequestMapping("save.php")
	public String save(Model model, @ModelAttribute("staff") Staff staff) {
		return "advanceForm";
	}

	private Map<String,String> getOptions() {
		Map<String,String> map = new HashMap<>();
		map.put("MAN","Manager");
		map.put("EMP","Employee");
		return map;
	}

	private List<Position> getPositions2(){
		List<Position> list = new ArrayList();
		list.add(new Position("MAN","Manager"));
		list.add(new Position("EMP","Employee"));
		return list;
	}
}

