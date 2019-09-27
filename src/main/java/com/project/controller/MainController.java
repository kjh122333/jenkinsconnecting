package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping("board")
	public String board() {
		return "redirect:/board/list";
	}
	
	@RequestMapping("user")
	public String user() {
		return "redirect:/user/loginPage";
	}
}
