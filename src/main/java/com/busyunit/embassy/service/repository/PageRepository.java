package com.busyunit.embassy.service.repository;

import com.busyunit.embassy.service.model.Navigation;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface PageRepository extends PagingAndSortingRepository<Navigation, Integer> {
}
