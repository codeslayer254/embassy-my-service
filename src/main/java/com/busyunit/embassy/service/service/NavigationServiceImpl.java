package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Navigation;
import com.busyunit.embassy.service.repository.NavigationRepository;
import com.busyunit.embassy.service.repository.PageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NavigationServiceImpl implements NavigationService {

    @Autowired
    private PageRepository pageRepository;

    @Autowired
    private NavigationRepository navigationRepository;

    @Override
    public Page<Navigation> getAllPages(Pageable pageable) {
        return pageRepository.findAll(pageable);
    }


    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
    public Navigation get(Long id) {
        return pageRepository.findOne(id.intValue());
    }


    @Override
    public List<Navigation> findAll() {
        return navigationRepository.findAll();
    }
}
