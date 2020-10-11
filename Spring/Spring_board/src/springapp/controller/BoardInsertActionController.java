package springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import springapp.dao.BoardDAO;
import springapp.vo.BoardVO;

@Controller
public class BoardInsertActionController {
	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping("/board_insert_action.do")
	public String writerArticle(BoardVO boardVO) {
		boardDAO.insertArticle(boardVO);
	
		return "redirect:/board_list.do";
	}
	
	
}
