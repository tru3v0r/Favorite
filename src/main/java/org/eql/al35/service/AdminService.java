package org.eql.al35.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.eql.al35.entity.Gender;
import org.eql.al35.entity.PayMode;
import org.eql.al35.entity.Status;
import org.eql.al35.entity.User;
import org.eql.al35.entity.UserType;
import org.eql.al35.entity.Vat;
import org.eql.al35.iservice.AdminIService;
import org.eql.al35.repository.GenderIRepository;
import org.eql.al35.repository.PayModeIRepository;
import org.eql.al35.repository.StatusIRepository;
import org.eql.al35.repository.UserIRepository;
import org.eql.al35.repository.UserTypeIRepo;
import org.eql.al35.repository.VatIRepository;

@Service
@Transactional
public class AdminService implements AdminIService {

	@Autowired
	StatusIRepository statusRepo;

	@Autowired
	UserIRepository userRepo;

	@Autowired
	GenderIRepository genderRepo;

	@Autowired
	UserTypeIRepo userTypeRepo;

	@Autowired
	VatIRepository vatRepo;

	@Autowired
	PayModeIRepository payModeRepo;

	@Override
	public List<Status> displayAllStatus() {
		return (List<Status>) statusRepo.findAll();
	}

	@Override
	public List<User> displayAllUsers() {
		return (List<User>) userRepo.findAll();
	}

	@Override
	public List<Vat> displayAllVats() {
		return (List<Vat>) vatRepo.findAll();
	}

	@Override
	public List<PayMode> displayAllPayModes() {
		return (List<PayMode>) payModeRepo.findAll();
	}

	@Override
	public User updateUser(User user, Integer id) {

		Optional<User> optionnalUser = userRepo.findById(id);
		User existingUser = new User();

		if(optionnalUser.isPresent()) {
			existingUser = optionnalUser.get();
			existingUser.setId(user.getId());
			existingUser.setName(user.getName());
			existingUser.setSurname(user.getSurname());
			existingUser.setEmail(user.getEmail());
			existingUser.setLogin(user.getLogin());
			existingUser.setPassword(user.getPassword());
			existingUser.setPhoneNumber(user.getPhoneNumber());
			existingUser.setSubscribingDate(user.getSubscribingDate());
			existingUser.setUnsubscribingDate(user.getUnsubscribingDate());
			existingUser.setBirthDate(user.getBirthDate());

			Optional<Gender> gender = genderRepo.findById(user.getGender().getId());
			existingUser.setGender(gender.isPresent() ? gender.get() : null);

			Optional<UserType> userType = userTypeRepo.findById(user.getUserType().getId());
			existingUser.setUserType(userType.isPresent() ? userType.get() : null);
		}

		return existingUser;
	}

	@Override
	public User displayUser(Integer id) {
		Optional<User> user = userRepo.findById(id);
		return user.isPresent() ? user.get() : null;
	}
}
