package org.eql.al35.iservice;

import org.eql.al35.entity.Cart;
import org.eql.al35.entity.Article;
import org.eql.al35.entity.Product;


public interface CartIService {

	int getCartProductsQuantity(Cart cart);
	double getTotalPriceCart(Cart cart);
	public boolean enoughInStock(Article article, Product product);
	void addArticle(Cart cart, Article article);
	public Article getArticle(Cart cart, int index);
	public void removeArticle(Cart cart, int index);

}
