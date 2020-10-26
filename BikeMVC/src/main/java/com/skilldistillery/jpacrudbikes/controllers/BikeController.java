package com.skilldistillery.jpacrudbikes.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		  public ModelAndView getBikeById(Integer bid) {
		    ModelAndView mv = new ModelAndView();
		    Bike bike = dao.findById(bid);     
		    int count = 1;		   
		    mv.addObject("count", count);
		    mv.addObject("bike", bike);
		    mv.setViewName("show");
		    return mv;
		  }
		  
			@RequestMapping(path="addBike.do", method=RequestMethod.GET)
			  public ModelAndView addBike() {
			    ModelAndView mv = new ModelAndView();
			    mv.addObject(new Bike());
			    mv.setViewName("BikeAdded");
			    return mv;
			  }
			@RequestMapping(path="addNewBike.do", method=RequestMethod.POST)
			public String addBikeToDB(Bike bike, RedirectAttributes redir) {
				dao.create(bike);
				if (bike.getId()== 0) {
					bike = null;
				}
//				System.out.println(film);
				redir.addFlashAttribute("bike", bike);
				return "redirect:bikeAdded.do";
			}
			
			@RequestMapping(path="bikeAdded.do", method = RequestMethod.GET)
			public ModelAndView bikeAdded() {
				ModelAndView mv = new ModelAndView();
				mv.addObject("Confirmation", "Added");
				mv.setViewName("ConfirmationPage");
				return mv;
			}
			
			@RequestMapping(path="SearchKeyword.do")
			public ModelAndView SearchBikeResults(String keyword) {
				List<Bike> searchList =  dao.findBikesFromSearch(keyword);
				ModelAndView mv = new ModelAndView();
				int count = 0;
				for (Bike bike : searchList) {
					count++;
				}
				mv.addObject("count", count);
				mv.addObject("keyword", keyword);
				mv.addObject("bikes", searchList);
				mv.setViewName("show");
				return mv;
			}
			@RequestMapping(path="deleteBike.do", method=RequestMethod.GET)
			public ModelAndView deleteBikeFromDB(@RequestParam("bid") int id ) {
				ModelAndView mv = new ModelAndView();
				Bike bikeToDelete = dao.findById(id);
				mv.addObject("bike", bikeToDelete);
				mv.setViewName("DeleteBikeConfirm");
				return mv;
			}
			
			@RequestMapping(path="confirmBikeDelete.do", method=RequestMethod.POST)
			public ModelAndView confirmDelete(@RequestParam("bid")int bid) {
				ModelAndView mv = new ModelAndView();
				dao.destroy(bid);
				mv.setViewName("DeleteBikeResult");
				return mv;				
			}
			@RequestMapping(path="getNewBikeInfo.do", method=RequestMethod.GET)
			  public ModelAndView updateBike(@RequestParam("bid") int bid) {
			    ModelAndView mv = new ModelAndView();
			    mv.addObject("bike", dao.findById(bid));
			    mv.setViewName("Update");
			    return mv;
			  }
			@RequestMapping(path="editBike.do", method= RequestMethod.POST)
			public ModelAndView updatedBike(Bike bike, RedirectAttributes redir) {
				ModelAndView mv = new ModelAndView();
				System.out.println(bike);
				Bike updatedBike = dao.update(bike.getId(),bike);
				System.out.println(updatedBike);
//				System.out.println("IN CONTROLLER BEFORE REDIRECT");
				
				redir.addFlashAttribute("bike", updatedBike);
				mv.setViewName("redirect:Update.do");
				return mv;
			}
			@RequestMapping(path="Update.do", method=RequestMethod.GET)
			  public ModelAndView Update() {
			    ModelAndView mv = new ModelAndView();
			    mv.addObject("Confirmation", "Updated");
			    mv.setViewName("ConfirmationPage");
			    return mv;
			  }
		  
}
