package org.eql.al35.repository;

import org.springframework.data.repository.CrudRepository;

import org.eql.al35.entity.Product;
import org.eql.al35.entity.Size;
import org.eql.al35.entity.Stock;

public interface StockIRepository extends CrudRepository<Stock, Integer> {

	public Stock findByProductAndSize(Product product, Size size);

}
