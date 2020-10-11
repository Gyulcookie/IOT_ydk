package springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import springapp.dao.BoardDAO;
import springapp.vo.BoardVO;

@Controller
public class BoardUpdateController {

	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping("/board_update_action.do")
	public String updateArticle(BoardVO boardVO) {
		boardDAO.updateArticle(boardVO);
	
		return "redirect:/board_list.do";
	}
}
