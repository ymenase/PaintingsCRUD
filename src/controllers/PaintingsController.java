package controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.Painting;
import data.GalleryDAO;

@Controller
public class PaintingsController {
	@Autowired
	private GalleryDAO galleryDAO;

	@RequestMapping("paintingsIndex.do")
	public ModelAndView getAllPaintings() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paintings.jsp");
		mv.addObject("paintings", galleryDAO.getPaintings());
		return mv;
	}

	@RequestMapping(path = "addPaintingToGallery.do", params = "add", method = RequestMethod.GET)
	public ModelAndView addPaintingToGallery(Painting painting) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paintings.jsp");
		mv.addObject("paintings", galleryDAO.addPaintingToGallery(painting));
		return mv;
	}

	@RequestMapping(path = "removePaintingFromGallery.do", params = "remove", method = RequestMethod.GET)
	public ModelAndView removePaintingFromGallery(@RequestParam("remove") String title) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paintings.jsp");
		mv.addObject("paintings", galleryDAO.removePaintingFromGallery(title));
		return mv;

	}

	@RequestMapping(path = "updatePaintingNotes.do", method = RequestMethod.GET)
	public ModelAndView updatePaintingNotes(@RequestParam("note") String note, @RequestParam("name") String name) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paintings.jsp");
		mv.addObject("paintings", galleryDAO.updatePaintingNotes(note, name));
		return mv;
	}

	@RequestMapping(path = "clearPaintingNotes.do", method = RequestMethod.GET)
	public ModelAndView clearPaintingNotes(@RequestParam("clear") String name) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("paintings.jsp");
		mv.addObject("paintings", galleryDAO.clearPaintingNotes(name));
																	
		return mv;
	}

}
