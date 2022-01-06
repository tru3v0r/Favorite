package org.eql.al35.service;

import java.util.List;
import java.util.Optional;

import org.eql.al35.entity.Custom;
import org.eql.al35.entity.Design;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.entity.ProductTypeLocation;
import org.eql.al35.iservice.CustomIService;
import org.eql.al35.repository.DesignIRepository;
import org.eql.al35.repository.ProductTypeLocationIRepository;

@Service
public class CustomService implements CustomIService {

	@Autowired
	/**
	* Javadoc comment.
	*/
	private ProductTypeLocationIRepository productTypeLocationRepo;
	@Autowired
	/**
	* Javadoc comment.
	*/
	private DesignIRepository designRepo;

	@Override
	public void addCustom(List<Custom> customs, Integer idDesign, Integer idLocation) {
		Custom custom = new Custom();
		Optional<ProductTypeLocation> productType = productTypeLocationRepo.findById(idLocation);
		custom.setProductTypeLocation(productType.isPresent() ? productType.get() : null);
		Optional<Design> design = designRepo.findById(idDesign);
		if (design.isPresent()) {
			custom.setDesign(design.get());
			custom.setPrice(design.get().getPrice());
		}
		customs.add(custom);
	}
}
