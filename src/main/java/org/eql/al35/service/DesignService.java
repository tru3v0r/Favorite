package org.eql.al35.service;

import java.util.List;

import org.eql.al35.entity.Design;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.DesignIService;
import org.eql.al35.repository.DesignIRepository;

@Service
public class DesignService implements DesignIService{

	@Autowired
	private DesignIRepository designRepo;

	@Override
	public List<Design> displayAllDesign(){
		return (List<Design>) designRepo.findAll();
	}
}
