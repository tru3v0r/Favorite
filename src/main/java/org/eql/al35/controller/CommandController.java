package org.eql.al35.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.eql.al35.entity.Command;
import org.eql.al35.entity.User;
import org.eql.al35.iservice.CommandIService;

@Controller
public class CommandController {

	@Autowired
	/**
	* Javadoc comment.
	*/
	private CommandIService commandService;

	List<Command> commands = new ArrayList<>();

	@GetMapping("/myOrders")
	/**
	 * Javadoc comment.
	 */
	public String userCommands(Model model, HttpSession session) {
		User sessionUser = (User) session.getAttribute("sessionUser");
		commands = commandService.findByUser(sessionUser.getId());
		commands.sort((o2,o1) -> o1.getCreationDate().compareTo(o2.getCreationDate()));
		model.addAttribute("commands", commands);
		return "myOrders";
	}

	@GetMapping("/order/{id}")
	/**
	 * Javadoc comment.
	 */
	public String displayCommand(@PathVariable Integer id, Model model, HttpSession session) {
		String retour = "";
		User sessionUser = (User) session.getAttribute("sessionUser");
		commands = commandService.findByUser(sessionUser.getId());
		for (Command command : commands) {
			if (command.getId().equals(id)) {
				model.addAttribute("commande", commandService.displaybyId(id));
				retour = "/order";
				break;
			} 	else {
				retour = "/unauthorized";
			}
		}  return retour;
	}
}
