package com.project.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.db.BoardDTO;
import com.board.service.BoardService;
import com.board.service.Criteria;
import com.board.service.Paging;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService service;

	@RequestMapping("/list")
	public String boardList(BoardDTO dto, Model model, Criteria cri) throws Exception {
		Paging paging = new Paging();
		paging.setCri(cri);
		paging.setTotalCount(service.boardListCnt(dto));

		int pageNum = paging.getCri().getPage();

		List<Map<String, Object>> list = service.listAll(cri);

		model.addAttribute("boardList", list);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("paging", paging);
		return "/board/BoardList";
	}

	@RequestMapping("/detail")
	public ModelAndView boardDetail(@RequestParam int no) throws Exception {
		service.boardHit(no);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/BoardDetail");
		mav.addObject("boardDetail", service.boardDetail(no));
		return mav;
	}

	@RequestMapping("/delete")
	public String boardDelete(@RequestParam int no) throws Exception {
		service.boardDelete(no);
		return "redirect:/board/list";
	}

	@RequestMapping("/writePage")
	public String boardWritePage() {
		return "/board/BoardWrite";
	}

	@RequestMapping("/write")
	public String boardWrite(@ModelAttribute BoardDTO dto) throws Exception {
		service.boardWrite(dto);
		return "redirect:/board/list";
	}

	@RequestMapping("/editPage")
	public ModelAndView boardEditPage(@RequestParam int no) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/board/BoardEdit");
		mav.addObject("boardEdit", service.boardDetail(no));
		return mav;
	}

	@RequestMapping("/edit")
	public String boardEdit(@ModelAttribute BoardDTO dto) throws Exception {
		service.boardEdit(dto);
		return "redirect:/board/detail?no=" + dto.getNo();
	}

}
