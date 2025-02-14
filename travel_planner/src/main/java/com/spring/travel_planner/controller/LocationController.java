package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.service.LocationServiceImpl;

@Controller
public class LocationController {
	
	private static final Logger logger = LoggerFactory.getLogger(LocationController.class);
	
	@Autowired
	private LocationServiceImpl service;
	
	@RequestMapping("/location_main.lc")
	public String local_main(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_main.lc >>>");
		
		service.guListAction_test(request, response, model);
		
		return "location/location_main";
	}
	
	@RequestMapping("/location_detailAction.lc")
	public String location_datailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_datailAction.lc >>>");
		
		return "location/location_detailAction";
	}
	
	@RequestMapping("/location_mainSelect.lc")
	public String location_mainSelect(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_mainSelect.lc >>>");
		
		/* service.guListAction(request, response, model); */
		
		
		return "location/location_mainSelect";
	}
	
	@RequestMapping("/location_mainListAction.lc")
	public String location_mainListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_mainListAction.lc >>>");
		
		return "location/location_mainListAction";
	}
	
}
