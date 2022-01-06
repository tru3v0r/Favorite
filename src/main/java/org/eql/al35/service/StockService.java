package org.eql.al35.service;

import org.eql.al35.entity.Stock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.StockIService;
import org.eql.al35.repository.StockIRepository;

@Service
public class StockService implements StockIService {

	@Autowired
	/**
	* Javadoc comment.
	*/
	private StockIRepository stockRepository;

	@Override
	public Stock displayStockById(int id) {
		return stockRepository.findById(id).orElse(null);
	}

	@Override
	public Stock upDate(Integer id, Stock stock) {
		stock.setId(id);

		return stockRepository.save(stock);
	}
}
