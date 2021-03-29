package com.nutrition.repository;


import com.nutrition.entity.client.Client;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRepository extends JpaRepository<Client, Long> {

    Client findClientByUserUsername(String name);


    Client findClientByUserId(Long id);

}
