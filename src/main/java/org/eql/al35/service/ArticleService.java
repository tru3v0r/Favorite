package org.eql.al35.service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.eql.al35.entity.Article;
import org.eql.al35.entity.Custom;
import org.eql.al35.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.ArticleIService;
import org.eql.al35.repository.ProductIRepository;

@Service
@Transactional
public class ArticleService implements ArticleIService{

	@Autowired
	/**
	* Javadoc comment
	*/
	private ProductIRepository productRepo;


	@Override
	public void addProduit(Integer id, Article article) {
		Optional<Product> product = productRepo.findById(id);

		if (product.isPresent()) {
			article.setProduct(product.get());
			article.setPrice(product.get().getPrice());
		}
	}

	@Override
	public void addCustoms(List<Custom> customs, Article article) {
		Set<Custom> articleCustoms = new HashSet<>();
		for (Custom custom : customs) {
			articleCustoms.add(custom);
			article.setPrice(article.getPrice()+custom.getPrice());
		}
		article.setCustoms(articleCustoms);
	}

}
