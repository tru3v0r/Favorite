package org.eql.al35.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.entity.Article;
import org.eql.al35.entity.Cart;
import org.eql.al35.entity.Command;
import org.eql.al35.entity.PayMode;
import org.eql.al35.entity.Status;
import org.eql.al35.entity.Stock;
import org.eql.al35.entity.User;
import org.eql.al35.entity.Vat;
import org.eql.al35.iservice.CommandIService;
import org.eql.al35.repository.AddressIRepository;
import org.eql.al35.repository.ArticleIRepository;
import org.eql.al35.repository.CityIRepository;
import org.eql.al35.repository.CommandIRepository;
import org.eql.al35.repository.CustomIRepository;

import org.eql.al35.repository.PayModeIRepository;
import org.eql.al35.repository.ProductIRepository;
import org.eql.al35.repository.StatusIRepository;
import org.eql.al35.repository.StockIRepository;
import org.eql.al35.repository.UserIRepository;
import org.eql.al35.repository.VatIRepository;

@Service
@Transactional
public class CommandService implements CommandIService {

	@Autowired
	/**
	* Javadoc comment
	*/
	CommandIRepository cmdRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	StatusIRepository statusRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	VatIRepository vatRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	AddressIRepository addressRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	CityIRepository cityRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	PayModeIRepository payModeRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	ArticleIRepository articleRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	CustomIRepository customRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	UserIRepository userRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	StockIRepository stockRepo;

	@Autowired
	/**
	* Javadoc comment
	*/
	ProductIRepository productRepo;

	@Override
	public Command createCommand(Cart cart, Command command) {
		command.setArticles(cart.getArticles());
		command.setTaxOutPrice(cart.getPrice());
		command.setTaxOutPrice((double) (Math.round(cart.getPrice()*100) / 100));
		return command;
	}

	@Override
	public Command saveCommand(Command command) {
		setInfosCommand(command);
		articleRepo.saveAll(command.getArticles());	//créer les articles en BDD
		cmdRepo.save(command);
		for (Article article : command.getArticles()) {
			article.setCommand(command);
			updateStock(article);
		}
		articleRepo.saveAll(command.getArticles()); //update la cmd ds les articles
		return command;
	}

	private void setInfosCommand(Command command) {
		Optional<Vat> vat = vatRepo.findById(5); //en dur global pour la command, a modifier pour chaque article plus tard
		if (vat.isPresent()) {
			command.setVat(vat.get());
			command.setTaxInPrice(command.getTaxOutPrice() + command.getTaxOutPrice()*vat.get().getRate());
			command.setCreationDate(LocalDateTime.now());
			Optional<PayMode> paymode = payModeRepo.findById(1);
			command.setPayMode(paymode.isPresent() ? paymode.get() : null);
			Optional<Status> status = statusRepo.findById(1);
			command.setStatus(status.isPresent() ? status.get() : null);
		}
	}


	@Override
	public List<Command> findByUser(Integer user) {
		List<Command> allCommands = cmdRepo.findByUser(user);
		List<Command> filteredCommands = new ArrayList<>();
		for (Command command : allCommands) {
			if (command.getCreationDate().isBefore(LocalDateTime.now())) {
				filteredCommands.add(command);
			}
		}
		return filteredCommands;
	}

	@Override
	public Command displaybyId(Integer id) {
		Optional<Command> command = cmdRepo.findById(id);
		return command.isPresent() ? command.get() : null;
	}

	@Override
	public List<Command> displayAllCommands() {
		return (List<Command>) cmdRepo.findAll();
	}

	@Override
	public Command updateCommand(Command command) {
		addressRepo.save(command.getDeliveryAddress());
		addressRepo.save(command.getFacturationAddress());
		cityRepo.save(command.getDeliveryAddress().getCity());
		cityRepo.save(command.getFacturationAddress().getCity());
		payModeRepo.save(command.getPayMode());
		vatRepo.save(command.getVat());
		statusRepo.save(command.getStatus());
		return cmdRepo.save(command);
	}

	private void updateStock(Article article) {
		article.getProduct().setQuantity(article.getProduct().getQuantity() - article.getQuantity());
		productRepo.save(article.getProduct());
		Stock stock = stockRepo.findByProductAndSize(article.getProduct(), article.getSize());
		stock.setQuantity(stock.getQuantity() - article.getQuantity());
		stockRepo.save(stock);
	}

	@Override
	public void saveUser(User user) {
		userRepo.save(user);
	}
}
