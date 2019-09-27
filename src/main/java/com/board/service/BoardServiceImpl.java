package com.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.db.BoardDAO;
import com.board.db.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return dao.boardList();
	}

	@Override
	public BoardDTO boardDetail(int no) throws Exception {
		return dao.boardDetail(no);
	}

	@Override
	public void boardHit(int no) throws Exception {
		dao.boardHit(no);
	}

	@Override
	public void boardDelete(int no) throws Exception {
		dao.boardDelete(no);
	}

	@Override
	public void boardWrite(BoardDTO dto) throws Exception {
		String title = dto.getTitle();
		String content = dto.getContent();
		String id = dto.getId();

		dto.setTitle(title);
		dto.setContent(content);
		dto.setId(id);

		dao.boardWrite(dto);
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		dao.boardEdit(dto);
	}

	@Override
	public List<Map<String, Object>> listAll(Criteria cri) throws Exception {
		return dao.listAll(cri);
	}

	@Override
	public int boardListCnt(BoardDTO dto) throws Exception {
		return dao.boardListCnt(dto);
	}

}
