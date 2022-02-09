package com.human.service;

import java.util.ArrayList;
import java.util.List;

import com.human.dto.BootoDto;
import com.human.dto.BootoDto;
import com.human.vo.PageMaker;

	public interface BootoService {
	
	public void insert(BootoDto dto) throws Exception; //장바구니 추가
	public void delete(String productNum) throws Exception; //장바구니 개별삭제
	public void deleteAll(String userID) throws Exception;	 	//장바구니 비우기
	public ArrayList<BootoDto> selectAll() throws Exception; // 상품정보 불러오기
	//public List<BootoDto> listSearch(PageMaker pm)throws Exception;
	//public int listSearchCount(PageMaker pm)throws Exception;

	
}
