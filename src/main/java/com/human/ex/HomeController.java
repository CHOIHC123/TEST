package com.human.ex;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.dto.BootoDto;
import com.human.service.BootoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private BootoService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/", method = {RequestMethod.GET,RequestMethod.POST})
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//String formattedDate = dateFormat.format(date);
		//model.addAttribute("serverTime", formattedDate );
		
		return "redirect:/zboard/airtop";
	}
	
	@RequestMapping(value = "/zboard/airtop", method = RequestMethod.GET)
	public String airtop(Locale locale, Model model) throws Exception {
		model.addAttribute("list", service.selectAll());
		return "zboard/airtop";
	}

	
	@RequestMapping(value = "/include/hederair", method = {RequestMethod.GET,RequestMethod.POST})
	public String headerair() {
		
		return "include/headerair";
	}
	/**
	 * 삭제
	 * @param productNum
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/zboard/delete" , method ={ RequestMethod.POST })
	public Object  delete(HttpSession session, HttpServletRequest req) throws Exception {
		Map<String, Object> resultMap = new HashMap<String, Object>(); // ajax를 통해 넘어온 배열 데이터 선언
		String[] wishlistNum = req.getParameterValues("wishlistNum");
		System.out.println("wishlistNum"+ wishlistNum.toString());
		try {
			if (wishlistNum != null && wishlistNum.length > 0) {
				for (int i = 0; i < wishlistNum.length; i++) {
					System.out.println("ajax traditional result : " + i + " : " + wishlistNum[i]);
					service.delete(wishlistNum[i]);
				}
				resultMap.put("result", "삭제 완료 ");
			} else {
				resultMap.put("result", "실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultMap;

	}
	/*
	 * @RequestMapping(value = "/selectAll", method = RequestMethod.GET) public
	 * String selectAll(Model model)throws Exception { model.addAttribute("list",
	 * service.selectAll()); return "selectAll"; }
	 */

}
