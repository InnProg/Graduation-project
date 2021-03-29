package com.nutrition.repository;

import com.nutrition.entity.client.indicators.Anthropometry;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnthropRepository extends JpaRepository<Anthropometry, Long> {


}
