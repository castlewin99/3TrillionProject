
package com.care.boot.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	@Autowired private MemberService service ;
	@Autowired private HttpSession session;
	
	@RequestMapping("regist")
	public String regist() {
		return "member/regist";
	}
	
	
	// [ Regist ]
	@PostMapping("idCheck")
	@ResponseBody
	public int idCheck(@RequestParam("id") String id){
		int result = service.idCheck(id);
		return result;
	}
	
	
	@PostMapping("registProc")
	public String registProc(MemberDTO member, String postcode, 
			String detailAddress, Model model, RedirectAttributes ra) {
		
		if(member.getAddress() != null && member.getAddress().trim().isEmpty() == false)
			member.setAddress( postcode + "," + member.getAddress() + "," + detailAddress);
		System.out.println("id: " + member.getId());
		System.out.println("pw: " + member.getPw());
		System.out.println("name: " + member.getUserName());
		System.out.println("pc: " + member.getPostcode());
		System.out.println("add: " + member.getAddress());

		String msg = service.registProc(member);
		System.out.println("msg: " + msg);
		
		if(msg.equals("회원 등록 완료")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:index";
		}
		
		model.addAttribute("msg", msg);
		return "member/regist";
	}
	
	
	
	// [ Login & Logout ]
		@RequestMapping("login")
		public String login() {
			return "member/login";
		}
		
		@PostMapping("loginProc")
		public String loginProc(String id, String pw, Model model, RedirectAttributes ra) {
			String msg = service.loginProc(id, pw);
			if(msg.equals("로그인 성공")) {
				ra.addFlashAttribute("msg", msg);
				return "redirect:index";
			}
			model.addAttribute("msg", msg);
			return "member/login";
		}
		
		
		@RequestMapping("logout")
		public String logout(RedirectAttributes ra) {
			session.invalidate();
			ra.addFlashAttribute("msg", "로그 아웃");

			// 카카오 로그아웃을 위한 코드 추가
			kakaoService.unlink();
			return "redirect:index";
		}
		
		
		// [ memberInfo ]
		@RequestMapping("memberInfo")
		public String memberInfo(String select, String search,
				@RequestParam(value="currentPage", required = false) String cp, Model model) {
			service.memberInfo(select, search, cp, model);
			return "member/memberInfo";
		}
		

		// [ userInfo ]
		@RequestMapping("userInfo")
		public String userInfo(String id, Model model, RedirectAttributes ra) {
			String msg = service.userInfo(id, model);
			if(msg.equals("회원 검색 완료"))
				return "member/userInfo";
			
			ra.addFlashAttribute("msg", msg);
			return "redirect:memberInfo";
		}
		
		@RequestMapping("userInfo2")
		public String userInfo2(String id, Model model, RedirectAttributes ra) {
			String msg = service.userInfo2(id, model);
			if(msg.equals("회원 검색 완료"))
				return "member/userInfo";
			
			ra.addFlashAttribute("msg", msg);
			return "redirect:memberInfo";
		}
		
		// [ Update ]
		@RequestMapping("update")
		public String update() {
			String sessionId = (String)session.getAttribute("id");
			if(sessionId == null)
				return "redirect:login";
			return "member/update";
		}
		
		@PostMapping("updateProc")
		public String updateProc(MemberDTO member, Model model) {
			String sessionId = (String)session.getAttribute("id");
			if(sessionId == null)
				return "redirect:login";
			
			member.setId(sessionId);
			String msg = service.updateProc(member);
			if(msg.equals("회원 수정 완료")) {
				session.invalidate();
				return "redirect:index";
			}
			
			model.addAttribute("msg", msg);
			return "member/update";
		}
		
		
		// [ Delete ]
		@RequestMapping("delete")
		public String delete() {
			String sessionId = (String)session.getAttribute("id");
			if(sessionId == null)
				return "redirect:login";
			
			return "member/delete";
		}
		
		@PostMapping("deleteProc")
		public String deleteProc(MemberDTO member, Model model) {
			String sessionId = (String)session.getAttribute("id");
			if(sessionId == null)
				return "redirect:login";
			
			member.setId(sessionId);
			String msg = service.deleteProc(member);
			if(msg.equals("회원 삭제 완료")) {
				session.invalidate();
				return "redirect:index";
			}
			
			model.addAttribute("msg", msg);
			return "member/delete";
		}

		
		// [ Kakao Login ]
		@Autowired private KakaoService kakaoService;
		@RequestMapping("kakaoLogin")
		public String kakaoLogin(String code) {
			System.out.println("code : " + code);
			kakaoService.getAccessToken(code);
			kakaoService.getUserInfo();
			return "redirect:index";
		}
		

		/*
		 code : meMUZqZaUazAkzsNiYT_7S5XrxkzR6ED9MaTRfvMaDVo_rYS4bGA90sndxkKPXTaAAABi6NeRVRb9Pmr5eg_ZA
		*/
	}
