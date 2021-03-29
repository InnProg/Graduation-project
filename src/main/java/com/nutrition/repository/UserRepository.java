package com.nutrition.repository;


import com.nutrition.entity.Role;
import com.nutrition.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findUserByUsername(String username);



}
