package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Navigation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface NavigationService {

    Page<Navigation> getAllPages(Pageable pageable);

    Navigation get(Integer id);

    List<Navigation> findAll();
}
