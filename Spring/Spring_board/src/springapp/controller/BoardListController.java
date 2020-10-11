package springapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import springapp.dao.BoardDAO;
import springapp.vo.BoardVO;

@Controller
public class BoardListController {
	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping("/board_list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		
		List<BoardVO> boardList = boardDAO.selectBoardList();
		
		mav.setViewName("list");
		mav.addObject("boardList",boardList);
		
		
		return mav;
	}
}
