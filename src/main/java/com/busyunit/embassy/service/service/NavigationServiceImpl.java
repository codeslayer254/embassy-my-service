package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Navigation;
import com.busyunit.embassy.service.repository.PageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class NavigationServiceImpl implements NavigationService {

    @Autowired
    private PageRepository pageRepository;

    @Override
    public Page<Navigation> getAllPages(Pageable pageable) {
        return pageRepository.findAll(pageable);
    }

    public PageRepository getPageRepository() {
        return pageRepository;
    }
}
