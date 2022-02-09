package com.human.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.IOrderDao;
import com.human.dto.OrderDto2;
import com.human.dto.OrderDto3;
import com.human.dto.OrdersDto;
import com.human.dto.OrderDto;

@Service
public class OrderServiceImpl implements IOrderService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(OrderDto2 dto) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		dao.insert(dto);
	}
		 
	@Override
	public void update(OrderDto2 dto) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		dao.update(dto);
	}

	@Override
	public void delete(String orderNum) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		dao.delete(orderNum);
	}

	@Override
	public ArrayList<OrderDto> selectAll() throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		return dao.selectAll();
	}
	
	
	@Override
	public OrderDto selectUserID(String userID) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		return dao.selectUserID(userID);
	}
	
	
	@Override
	public ArrayList<OrderDto> selectInfo() throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		return dao.selectInfo();
	}

	@Override
	public ArrayList<OrderDto2> selectOrder() throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		return dao.selectOrder();
	}

	@Override
	public void stateUpdate(OrderDto2 dto) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class);
		dao.stateUpdate(dto);
		
	}

	@Override
	public ArrayList<OrderDto3> selctOrderDetail(String orderNum) throws Exception {
		IOrderDao dao=sqlSession.getMapper(IOrderDao.class); 
		return dao.selctOrderDetail(orderNum);
	}

	 

	
	
}
