package com.project.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.user.db.UserDTO;
import com.user.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	private UserService service;

	@RequestMapping("/loginPage")
	public String userLoginPage() {
		return "/user/UserLogin";
	}

	@RequestMapping("/login")
	public ModelAndView userLogin(@ModelAttribute UserDTO dto, HttpSession session) throws Exception {
		boolean result = service.userLogin(dto, session);
		ModelAndView mav = new ModelAndView();
		if (result == true) {
			mav.setViewName("redirect:/board/list");
		} else {
			mav.setViewName("/user/UserLogin");
		}
		return mav;
	}

	@RequestMapping("/joinPage")
	public String userJoinPage() {
		return "/user/UserJoin";
	}

	@RequestMapping("/join")
	public String userJoin(@ModelAttribute UserDTO dto) throws Exception {
		service.userJoin(dto);
		return "redirect:/user/loginPage";
	}

	@RequestMapping("/idCheck")
	public void idCheck(@RequestParam String id, HttpServletResponse res) throws Exception {
		int result = 0;
		if (service.idCheck(id) != 0) {
			result = 1;
		}
		res.getWriter().print(result);
	}

	@RequestMapping("/detail")
	public ModelAndView userDetail(@RequestParam String id) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/UserDetail");
		mav.addObject("userDetail", service.userDetail(id));
		return mav;
	}

	@RequestMapping("/editPage")
	public ModelAndView userEditPage(@RequestParam String id) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/user/UserEdit");
		mav.addObject("userEdit", service.userDetail(id));
		return mav;
	}

	@RequestMapping("/edit")
	public String userEdit(@ModelAttribute UserDTO dto) throws Exception {
		service.userEdit(dto);
		return "redirect:/user/detail?id=" + dto.getId();
	}

	@RequestMapping("delete")
	public String userDelete(@RequestParam String id, HttpSession session) throws Exception {
		service.userDelete(id, session);
		return "redirect:/user/loginPage";
	}

	@RequestMapping("/logout")
	public String userLogout(HttpSession session) throws Exception {
		service.userLogout(session);
		return "redirect:/user/loginPage";
	}

	@RequestMapping("/findPage")
	public String userFindPage() {
		return "/user/UserFind";
	}

	@RequestMapping("/findIdPage")
	public String userFindIdPage() {
		return "/user/UserFindId";
	}

	@RequestMapping("/findPwPage")
	public String userFindPwPage() {
		return "/user/UserFindPw";
	}

	@RequestMapping("/findId")
	public ModelAndView userFindId(@ModelAttribute UserDTO dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<UserDTO> userList = service.userFindId(dto);
		System.out.println(userList);
		mav.setViewName("/user/UserId");
		mav.addObject("userFindId", userList);
		return mav;
	}

	@RequestMapping("/findPw")
	public ModelAndView userFindPw(@ModelAttribute UserDTO dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		String pw = service.userFindPw(dto);
		mav.setViewName("/user/UserPw");
		mav.addObject("userFindPw", pw);
		return mav;
	}
}
