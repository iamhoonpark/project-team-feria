package com.intime.feria.dao;

import java.util.List;

import com.intime.feria.vo.Feria;
import com.intime.feria.vo.PageVO;

public interface FeriasDAO {
	
	/* 2020-08-07 장유정(기본세팅) */
	public List<Feria> selectList(PageVO pageVO);
	
	//2020-08-12 박상훈
	public List<Feria> selectHostsFeiraList(PageVO pageVO);
	public int selectHostsFeriaTotal(int no);
	
}
