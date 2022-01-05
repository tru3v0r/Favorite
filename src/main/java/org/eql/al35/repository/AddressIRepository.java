package org.eql.al35.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import org.eql.al35.entity.Address;
import org.eql.al35.entity.City;
import org.eql.al35.entity.User;

public interface AddressIRepository extends CrudRepository<Address, Integer> {
	List<Address> findByUser(User user);
	Integer findIdByNameAndStreetAndCity(String name, String street, City city);

}
