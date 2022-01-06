package org.eql.al35.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import javax.transaction.Transactional;

import org.eql.al35.entity.Photo;
import org.eql.al35.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.PhotoIService;
import org.eql.al35.repository.PhotoIRepository;
import org.eql.al35.repository.ProductIRepository;


@Service
@Transactional
public class PhotoService implements PhotoIService {
	@Autowired
	/**
	* Javadoc comment.
	*/
	PhotoIRepository photoRepo;

	@Autowired
	/**
	* Javadoc comment.
	*/
	ProductIRepository productRepo;

	@Override
	public void upDatePhoto(Integer id, String pathPhoto, String descriptionPhoto, Integer productId, Integer index) {

		Photo photo = new Photo(id, pathPhoto, descriptionPhoto, null, null);
		Optional<Product> optionalProduct = productRepo.findById(productId);
		Product product = null;
		if (optionalProduct.isPresent()) {
			product = optionalProduct.get();
			Set<Photo> photos = product.getPhotos();
			List<Photo> listPhoto = new ArrayList<>(photos);
			for(int i = 0; i < listPhoto.size(); i++) {
				if (i ==index) {
					listPhoto.set(index, photo);
				}
			}
			photos = new HashSet<>(listPhoto);
			product.setPhotos(photos);
			productRepo.save(product);
		}
	}
}
