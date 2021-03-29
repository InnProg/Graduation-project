package com.nutrition.repository;

import com.nutrition.entity.history.History;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HistoryRepository extends JpaRepository<History, Long> {


}
