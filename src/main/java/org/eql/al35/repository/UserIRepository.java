package org.eql.al35.repository;

import org.springframework.data.repository.CrudRepository;

import org.eql.al35.entity.User;

public interface UserIRepository extends CrudRepository<User, Integer>{

}
