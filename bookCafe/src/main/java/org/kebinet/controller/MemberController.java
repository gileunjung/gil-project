package org.kebinet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.kebinet.controller.MemberController;
import org.kebinet.domain.MemberVO;
import org.kebinet.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member/*")
@Log4j
public class MemberController {
	
	private final MemberService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list....");
		model.addAttribute("list", service.getList());
	}
	
	@GetMapping("/register")
	public void registerGET() {
		
	} 
	
	@PostMapping("/register")
	public String register(MemberVO member, RedirectAttributes rttr) {
		
		log.info("member"+member);
		Long bno = service.register(member);
		log.info("Bno:"+bno);
		rttr.addFlashAttribute("result", bno);
		
		return "redirect:/member/list";
	}
	
	@GetMapping({"/get", "modify"})
	public void get(@RequestParam("bno")Long bno, Model model) {
		model.addAttribute("member", service.get(bno));
		
	}
	
	@PostMapping("/modify")
	public String modify(MemberVO member, RedirectAttributes rttr) {
		int count = service.modify(member);
		if(count == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/member/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno")Long bno, RedirectAttributes rttr) {
		int count = service.remove(bno);
		
		if(count == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/member/list";
	}
	

}
