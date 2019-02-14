package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Event;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;
import java.util.UUID;

public interface EventService {

    Event get(UUID id);

    List<Event> getEvents();

    Page<Event> getEvents(Pageable pageable);
}
