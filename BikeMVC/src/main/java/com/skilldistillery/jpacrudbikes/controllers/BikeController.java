package com.skilldistillery.jpacrudbikes.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrudbikes.data.BikeDAO;
import com.skilldistillery.jpacrudbikes.entities.Bike;

@Controller
public class BikeController {
		@Autowired
		private BikeDAO dao;
		
		@RequestMapping(path="/")
		public String index(Model model) {
			List<Bike> bikes = dao.findAll();
			model.addAttribute("bikes", bikes);
			
		  return "index";
		  }
		
		  @RequestMapping(path = "getBike.do")
		  public ModelAndView getFilm(Integer bid) {
		    ModelAndView mv = new ModelAndView();
		    Bike bike = dao.findById(bid);     
		    mv.addObject("bike", bike);
		    mv.setViewName("show");
		    return mv;
		  }
}
