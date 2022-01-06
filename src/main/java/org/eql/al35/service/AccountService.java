package org.eql.al35.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.eql.al35.entity.Address;
import org.eql.al35.entity.Gender;
import org.eql.al35.entity.User;
import org.eql.al35.entity.UserType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.iservice.AccountIService;
import org.eql.al35.repository.AddressIRepository;
import org.eql.al35.repository.GenderIRepository;
import org.eql.al35.repository.UserIRepository;
import org.eql.al35.repository.UserTypeIRepo;


@Service
@Transactional
public class AccountService implements AccountIService {

	@Autowired
	/**
	* Javadoc comment.
	*/
	private UserIRepository userRepository;

	@Autowired
	/**
	* Javadoc comment.
	*/
	private AddressIRepository addressRepository;

	@Autowired
	/**
	* Javadoc comment.
	*/
	private GenderIRepository genderRepository;

	@Autowired
	/**
	* Javadoc comment.
	*/
	UserTypeIRepo userTypeRepository;

	@Override
	public List<User> displayAllUsers() {
		return (List<User>) userRepository.findAll();
	}

	@Override
	public User getUser3() {
		Optional<User> user = userRepository.findById(3);
		return user.orElse(null);
	}

	@Override
	public List<Address> getAddressByUser(User user) {
		return addressRepository.findByUser(user);
	}

	@Override
	public User getAdminAccount() {
		Optional<User> user = userRepository.findById(2);
		return user.isPresent() ? user.get() : null;
	}

	@Override
	public List<Gender> getAllGenders(){
		return (List<Gender>) genderRepository.findAll();
	}

	@Override
	public List<UserType> getAllUserTypes() {
		return (List<UserType>) userTypeRepository.findAll();
	}
}
