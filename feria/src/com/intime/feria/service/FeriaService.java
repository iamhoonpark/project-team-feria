package com.intime.feria.service;

import java.util.List;
import java.util.Map;

import com.intime.feria.vo.Feria;
import com.intime.feria.vo.PageVO;

/* 2020-08-07 장유정(기본세팅) */
public interface FeriaService {
	
	//2020-08-12 박상훈
	public int getHostsFeriaTotal(int no);
	public Map<String, Object> getHostsFeriaList(int page, int no);
	
}
