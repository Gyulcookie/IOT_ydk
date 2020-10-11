package springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import springapp.dao.BoardDAO;
import springapp.vo.BoardVO;

@Controller
public class BoardDetailController {
	@Autowired
	private BoardDAO boardDAO;
	
	@RequestMapping("/board_detail.do")
	public ModelAndView listDetail(@RequestParam int seq) {
		BoardVO boardVO = boardDAO.selectBoardVO(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("detail");
		mav.addObject("boardVO",boardVO);
		
		return mav;
		
	}
}
