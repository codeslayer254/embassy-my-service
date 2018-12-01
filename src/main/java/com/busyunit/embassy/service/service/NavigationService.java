package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Navigation;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface NavigationService {

    Page<Navigation> getAllPages(Pageable pageable);
}
