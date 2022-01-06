package org.eql.al35.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


import org.eql.al35.entity.Article;
import org.eql.al35.entity.ProductType;
import org.eql.al35.iservice.ProductIService;

@Controller
public class ProductController {

	@Autowired
	/**
	* Javadoc comment
	*/
	private ProductIService productService;

	private static final String CATEGORIES_ATTR = "categories";


	@GetMapping("/products/all")
	/**
	 * Javadoc comment
	 */
	public String displayAllProducts(Model model) {
		model.addAttribute("products", productService.displayAvailableProducts());
		model.addAttribute(CATEGORIES_ATTR, productService.displayAllCategories());
		ProductType productType = new ProductType();
		productType.setName("");
		model.addAttribute("productType", productType);
		return "showcase";
	}

	@GetMapping("/products/{category}/{id}")
	/**
	 * Javadoc comment
	 */
	public String displayProduct(@PathVariable String category, @PathVariable Integer id, Model model) {

		Article article = new Article();

		model.addAttribute("product", productService.displayProductById(id));
		model.addAttribute(CATEGORIES_ATTR, productService.displayAllCategories());
		model.addAttribute("article", article);

		return "productSheet";
	}
	@GetMapping("/products/{productType}")
	/**
	 * Javadoc comment
	 */
	public String displayProductsByType(@PathVariable ProductType productType, Model model) {
		model.addAttribute(CATEGORIES_ATTR, productService.displayAllCategories());
		model.addAttribute("products", productService.displayByProductType(productType));
		model.addAttribute("productType", productType);
		return "showcase";
	}

}
