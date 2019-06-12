package com.spr.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spr.bean.Student;

@RestController
@RequestMapping(produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
public class ApiController {
	Map<String, Student> map = new HashMap<>();
	
	public ApiController() {
		map.put("SV001", new  Student("SV001", "Nguyen Hoang"));
		map.put("SV002", new  Student("SV002", "Nguyen Hoa"));
	}

	@GetMapping("api/get-one/{id}")
	public ResponseEntity<Student> getOne(@PathVariable("id") String id) {
		Student sv = map.get(id);
		return ResponseEntity.ok(sv);
	}

	@GetMapping("api/get-all")
	public ResponseEntity<Collection<Student>> getAll() {
		Collection<Student> list = map.values();
		return ResponseEntity.ok(list);
	}

	@PostMapping("api/create")
	public ResponseEntity<Student> post(@RequestBody Student sv){
		
		if(map.containsKey(sv.getId())) {
			ResponseEntity.badRequest().build();
		}
		map.put(sv.getId(), sv);
		return ResponseEntity.ok(sv);
	}

	@PutMapping("api/update/{id}")
	public ResponseEntity<Void> put(@RequestBody Student sv){
		
		if(!map.containsKey(sv.getId())) {
			ResponseEntity.notFound().build();
		}
		return ResponseEntity.ok().build();
	}
}
