package fr.eql.al35.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.eql.al35.entity.Article;
import fr.eql.al35.entity.Cart;
import fr.eql.al35.entity.Custom;
import fr.eql.al35.iservice.ArticleIService;
import fr.eql.al35.iservice.CartIService;
import fr.eql.al35.iservice.CustomIService;

@Controller
public class CartController {


	@Autowired
	private CartIService cartService;
	@Autowired
	private ArticleIService articleService;
	@Autowired
	private CustomIService customService;

	private static final String SESSION_CART = "sessionCart";

	@PostMapping("/addToCart")
	public String displayAddToCart(@ModelAttribute("article") Article article, @RequestParam("idProduct") Integer idProduct,
			Model model,
			HttpSession session) {

		articleService.addProduit(idProduct, article);

		if(!cartService.enoughInStock(article, article.getProduct())){
			return "noMoreStock";
		}

		Cart sessionCart = (Cart) session.getAttribute(SESSION_CART);
		cartService.addArticle(sessionCart, article);


		return "redirect:/products/all";
	}

	@PostMapping("/addCustomArticleToCart")
	public String displayAddCustomArticleToCart(@ModelAttribute("article") Article article, @RequestParam("idProduct") Integer idProduct,
			@RequestParam("idCustom1") Integer idCustom1 ,
			@RequestParam("idCustom2") Integer idCustom2, @RequestParam("idCustom3") Integer idCustom3,
			@RequestParam("locCustom1") Integer locCustom1,@RequestParam("locCustom2") Integer locCustom2,
			@RequestParam("locCustom3") Integer locCustom3, Model model,
			HttpSession session) {

		articleService.addProduit(idProduct, article);
		List<Custom> customs = new ArrayList<>();
		if (idCustom1 != 0) {
			customService.addCustom(customs, idCustom1, locCustom1);
		}
		if (idCustom2 != 0) {
			customService.addCustom(customs, idCustom2, locCustom2);
		}
		if (idCustom3 != 0) {
			customService.addCustom(customs, idCustom3, locCustom3);
		}
		articleService.addCustoms(customs, article);
		Cart sessionCart = (Cart) session.getAttribute(SESSION_CART);
		cartService.addArticle(sessionCart, article);

		return "redirect:/products/all";
	}

	@GetMapping("/cart")
	public String displayCart( Model model,
			HttpSession session) {

		Cart sessionCart = (Cart) session.getAttribute(SESSION_CART);
		Set<Article> articles = sessionCart.getArticles();
		model.addAttribute("cart", sessionCart);
		model.addAttribute("articles", articles);
		model.addAttribute("total", sessionCart.getPrice());
		return "cart";
	}

	@PostMapping("/cart")
	public String displayDeleteArticle(@RequestParam("index") Integer index, HttpSession session) {
		Cart sessionCart = (Cart) session.getAttribute(SESSION_CART);
		cartService.removeArticle(sessionCart, index);
		return "redirect:/cart";
	}
}
