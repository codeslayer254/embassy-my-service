package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Event;
import com.busyunit.embassy.service.repository.EmployeeRepository;
import com.busyunit.embassy.service.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
public class EventServiceImpl implements EventService {

    private final static int PAGESIZE = 3;

    @Autowired
    private EventRepository eventRepository;

    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ') and hasAuthority('DEPARTMENT_READ')")
    public Event get(UUID id) {
        return eventRepository.findOne(id);
    }


    @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_READ')")
    public List<Event> getEvents() {
        return eventRepository.findAll();
    }


    @Override
    public Page<Event> getEvents(Pageable pageable) {
        return eventRepository.findAll(pageable);
    }

    public List<Event> getPage(int pageNumber) {
        PageRequest request = new PageRequest(pageNumber - 1, PAGESIZE, Sort.Direction.ASC, "datePublished");
        return eventRepository.findAll(request).getContent();
    }

  /*  @Override
    @Transactional(readOnly = true)
    @PreAuthorize("hasAuthority('COMPANY_CREATE')")
    public void create(Employee employee) {
        eventRepository.create(employee);
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_UPDATE')")
    public Employee update(Employee employee) {
        return eventRepository.update(employee);x
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_DELETE')")
    public void delete(UUID id) {
        employeeRepository.delete(id);
    }

    @Override
    @Transactional
    @PreAuthorize("hasAuthority('COMPANY_DELETE')")
    public void delete(Employee employee) {
        eventRepository.delete(employee);
    }*/
}
