package com.nutrition.repository;

import com.nutrition.entity.history.Action;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ActionRepository extends JpaRepository<Action, Long> {

}
