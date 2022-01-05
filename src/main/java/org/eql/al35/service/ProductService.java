package org.eql.al35.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.eql.al35.entity.Design;
import org.eql.al35.entity.Photo;
import org.eql.al35.entity.Product;
import org.eql.al35.entity.ProductType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.ProductIService;
import org.eql.al35.repository.DesignIRepository;
import org.eql.al35.repository.ProductIRepository;
import org.eql.al35.repository.ProductTypeIRepository;

@Service
@Transactional
public class ProductService implements ProductIService {

	@Autowired
	private ProductIRepository productRepository;

	@Autowired
	private ProductTypeIRepository productTypeRepository;

	@Autowired
	private DesignIRepository designRepository;

	@Override
	public List<Product> displayAllProducts() {
		return (List<Product>) productRepository.findAll();
	}

	@Override
	public List<Product> displayAvailableProducts() {
		return productRepository.listAvailableProducts();
	}

	@Override
	public Product displayProductById(int id) {
		Optional<Product> product = productRepository.findById(id);
		return product.orElse(null);
	}

	@Override
	public List<ProductType> displayAllCategories() {
		return (List<ProductType>)productTypeRepository.findAll();
	}

	@Override
	public List<Product> displayByProductType(ProductType productType) {
		return productRepository.findByProductType(productType);
	}

	@Override
	public List<Design> displayAllDesign() {
		return (List<Design>) designRepository.findAll();
	}

	@Override
	public Product upDate(Integer id, Product product) {
		product.setId(id);
        String now = "2021-01-01 10:30";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime formatDateTime = LocalDateTime.parse(now, formatter);
		product.setRefCreationDate(formatDateTime);
		return productRepository.save(product);
	}

	@Override
	public void setDeleteProduct(Integer id) {
		Optional<Product> product = productRepository.findById(id);
		if(product.isPresent()) {
			product.get().setRefDeletionDate(LocalDateTime.now());
		}
	}

	@Override
	public Product addProduct(Product product) {
		product.setRefCreationDate(LocalDateTime.now());
		Set<Photo> photos = new HashSet<>();
		Photo photoPantalon = new Photo();
		photoPantalon.setPath("PANTALON_BEIGE_1.jpg");
		photoPantalon.setDescription("PANTALON_BEIGE_1");
		photos.add(photoPantalon);
		product.setPhotos(photos);
		return productRepository.save(product);
	}
}
