package com.intime.feria.controller;

import org.springframework.stereotype.Controller;


import com.intime.feria.service.CenaService;

@Controller
public class CenaController {
	
	private CenaService cenaService;

	public void setCenaService(CenaService cenaService) {
		this.cenaService = cenaService;
	}
	
	
}
