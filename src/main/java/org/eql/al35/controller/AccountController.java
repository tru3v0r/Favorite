package org.eql.al35.controller;

import org.eql.al35.entity.User;
import org.eql.al35.entity.Cart;
import org.eql.al35.iservice.AccountIService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes({"sessionCart", "sessionUser"})
public class AccountController {

	@Autowired
	private AccountIService accountService;

	private static final String SESSION_USER_ATTR = "sesionUser";
	private static final String SESSION_CART_ATTR = "sesionCart";


	@GetMapping({"/", "/home"})
	public String displayHome(Model model) {

		//Utilisateur 3 en dur en session (pour ne pas avoir à créer de compte)
		User user3 = accountService.getUser3();
		model.addAttribute(SESSION_USER_ATTR, user3);
        sessionCartGenerator(model, null);

		return "home";
	}

	@GetMapping("/switchAdmin")
    public String switchAdminAccount(Model model, HttpSession session) {

        User admin = accountService.getAdminAccount();
        model.addAttribute(SESSION_USER_ATTR, admin);
        Cart sessionCart = (Cart) session.getAttribute(SESSION_CART_ATTR);
        sessionCartGenerator(model, sessionCart);

        return "adminHome";
    }

	@GetMapping("/switchUser")
	public String switchUser3Account(Model model, HttpSession session) {

		User user3 = accountService.getUser3();
		model.addAttribute(SESSION_USER_ATTR, user3);
		Cart sessionCart = (Cart) session.getAttribute(SESSION_CART_ATTR);
        sessionCartGenerator(model, sessionCart);

		return "home";
	}

	private void sessionCartGenerator(Model model, Cart sessionCart) {
		if(sessionCart == null) {
			Cart cart = new Cart();
			cart.setArticlesQuantity(0);
			cart.setPrice(0.0);
			model.addAttribute(SESSION_CART_ATTR, cart);
		} else {
			model.addAttribute(SESSION_CART_ATTR, sessionCart);
		}

	}

	@PostMapping("/goodbye")
	public String close(SessionStatus status) {
		status.setComplete();
		return "home";
	}
}
