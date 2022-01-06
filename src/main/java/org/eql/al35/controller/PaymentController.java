package org.eql.al35.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.eql.al35.entity.Cart;
import org.eql.al35.entity.Command;
import org.eql.al35.entity.User;
import org.eql.al35.iservice.AccountIService;
import org.eql.al35.iservice.CommandIService;

@Controller
public class PaymentController {

	static Logger log = LoggerFactory.getLogger(PaymentController.class);

	@Autowired
	/**
	* Javadoc comment.
	*/
	CommandIService cmdService;

	@Autowired
	/**
	* Javadoc comment.
	*/
	AccountIService accountService;

	@GetMapping("/payment")
	/**
	 * Javadoc comment.
	 */
	public String displayPayment(Model model, HttpSession session) {
		Command command = new Command();
		model.addAttribute("command", command);
		return "payment";
	}

	@PostMapping("/newCommand")
	/**
	 * Javadoc comment.
	 */
	public String createNewCommand(Model model, HttpSession session,
			@ModelAttribute("command") Command command) {
		Cart sessionCart = (Cart) session.getAttribute("sessionCart");
		User sessionUser = (User) session.getAttribute("sessionUser");

		command = cmdService.createCommand(sessionCart, command); //ajouter les données du panier

		command.setUser(sessionUser);
		cmdService.saveUser(sessionUser);

		command.setReference(writeReference(sessionUser));
		cmdService.saveCommand(command); //stocker en BDD command et addresses

		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			log.error(e.getMessage());
			Thread.currentThread().interrupt();
		}
		return "redirect:home";
	}

	private String writeReference(User user) {
		StringBuilder reference = new StringBuilder();
		reference.append("CMD_");
		reference.append(LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd-hh-mm-ss")));
		reference.append("_Client_");
		reference.append(user.getId()); //a modif avec le n° Client en session
		return reference.toString();
	}
}
