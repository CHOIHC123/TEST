package com.human.ex;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.OrderDto2;
import com.human.dto.OrderDto;
import com.human.dao.IOrderDao;
import com.human.service.IOrderService;
import com.human.service.OrderServiceImpl;
@RequestMapping("/order/*")
@Controller
public class OrderController {
	@Autowired
	private IOrderService service;
	
	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	

	
	/*
	@RequestMapping(value = "/selectAll", method = RequestMethod.GET)
	public String selectAll(Model model) throws Exception{
		model.addAttribute("list", service.selectAll());
		return "selectAll";
	}
	
	@RequestMapping(value = "/selectName", method = RequestMethod.GET)
	public String selectName(String name,Model model) throws Exception{
		model.addAttribute("dto", service.selectUserID(name));
		return "selectName";
	}
	*/
	
	@RequestMapping(value = "/order/delete", method = RequestMethod.GET)
	public String remove(String orderNum,RedirectAttributes rttr) throws Exception {
		service.delete(orderNum);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/order/order3";	
	}
	/*
	 * @RequestMapping(value = "/selectName", method = RequestMethod.GET) public
	 * String selectName(String name,Model model) throws Exception{
	 * model.addAttribute("dto", service.selectName(name)); return "selectName"; }
	 */
	
    @RequestMapping(value = "/update", method = RequestMethod.GET) 
	public String update(String orderNum,Model model) throws Exception { 
		model.addAttribute("list",service.selctOrderDetail(orderNum)); 
		  return "/order/orderUpdate"; 
	}
	  
	@RequestMapping(value = "/update", method = RequestMethod.POST) 
	public String orderUpdateDB(OrderDto2 dto) throws Exception{
		service.update(dto);
		  return"redirect:/order/order3"; 
	}
	
	 

	//----------------------------------------------------------------------

	@RequestMapping(value = "/order/order", method = RequestMethod.GET)
	public String selects(Model model) throws Exception{
		model.addAttribute("list", service.selectInfo());
		
		return "order/order";
	}
	//mask_order테이블 데이터 넣기
	@RequestMapping(value = "/order/order", method = RequestMethod.POST)
	public String insertOrder(OrderDto2 dto) throws Exception{ 
		service.insert(dto);
	return "redirect:/order/order2"; 
	}
	
	//mask_order테이블 select
	@RequestMapping(value = "/order/order2", method = RequestMethod.GET)
	public String selectOrder(Model model) throws Exception{
		model.addAttribute("list", service.selectOrder());
		return "/order/order2";
	}
	
	
	@RequestMapping(value = "/order/order3", method = RequestMethod.GET)
	public String selectOrderDInfo(Model model) throws Exception{
		model.addAttribute("list", service.selectAll());
		return "/order/order3";
	}
	
	
//	ADMIN
//	-----------------------------------------------------------------------------//
	
	  @RequestMapping(value = "/admin/orderState", method = RequestMethod.GET)
	  public String stateUpdate(OrderDto2 dto,Model model) throws Exception { 
		  model.addAttribute("list",service.selectAll()); 
		  return "/admin/orderState"; 
	  }
	  
	  @RequestMapping(value = "/admin/orderState", method = RequestMethod.POST) 
	  public String stateUpdateDB(OrderDto2 dto) throws Exception{
		  service.stateUpdate(dto); 
		  return "redirect:/admin/orderState";
	  }
	  
	 
}
