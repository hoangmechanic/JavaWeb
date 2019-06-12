package com.spr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {
	@RequestMapping("api/client.php")
	public String getClient() {
		return "client";
	}
}
