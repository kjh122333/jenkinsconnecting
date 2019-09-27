package com.board.service;

import java.util.List;
import java.util.Map;

import com.board.db.BoardDTO;

public interface BoardService {
	public List<BoardDTO> boardList() throws Exception;

	public BoardDTO boardDetail(int no) throws Exception;

	public void boardHit(int no) throws Exception;

	public void boardDelete(int no) throws Exception;

	public void boardWrite(BoardDTO dto) throws Exception;

	public void boardEdit(BoardDTO dto) throws Exception;

	public List<Map<String, Object>> listAll(Criteria cri) throws Exception;

	public int boardListCnt(BoardDTO dto) throws Exception;
}
