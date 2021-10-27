package com.intime.feria.dao;

import java.util.List;

import com.intime.feria.vo.FDate;
import com.intime.feria.vo.PageVO;

public interface FDatesDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	public List<FDate> selectList(PageVO pageVO);
	
}
