package com.human.service;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.OrderDto2;
import com.human.dto.OrderDto3;
import com.human.dto.OrderDto;

public interface IOrderService {
	public void insert(OrderDto2 dto) throws Exception;
	
	public void update(OrderDto2 dto) throws Exception;
	
	public void stateUpdate(OrderDto2 dto) throws Exception;
	
	public void delete(String orderNum) throws Exception;
		
	public ArrayList<OrderDto> selectAll() throws Exception;
	
	public OrderDto selectUserID(String userID) throws Exception;
	
	public ArrayList<OrderDto> selectInfo() throws Exception;
	
	public ArrayList<OrderDto2> selectOrder() throws Exception;
	
	public ArrayList<OrderDto3> selctOrderDetail(String orderNum) throws Exception;
	
}
