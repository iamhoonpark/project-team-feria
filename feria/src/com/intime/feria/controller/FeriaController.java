package com.intime.feria.controller;

import org.springframework.stereotype.Controller;

import com.intime.feria.service.FeriaService;

@Controller
public class FeriaController {
	
	private FeriaService feriaService;
	
	public void setFeriaService(FeriaService feriaService) {
		this.feriaService = feriaService;
	}
	
	
}
