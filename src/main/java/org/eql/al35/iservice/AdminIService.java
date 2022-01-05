package org.eql.al35.iservice;

import java.util.List;

import org.eql.al35.entity.PayMode;
import org.eql.al35.entity.Status;
import org.eql.al35.entity.User;
import org.eql.al35.entity.Vat;

public interface AdminIService {

	List<Status> displayAllStatus();
	List<User> displayAllUsers();
	List<Vat> displayAllVats();
	List<PayMode> displayAllPayModes();
	User updateUser(User user, Integer id);
	User displayUser(Integer id);

}
