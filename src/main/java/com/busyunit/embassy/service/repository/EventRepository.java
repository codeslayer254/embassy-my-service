package com.busyunit.embassy.service.repository;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Event;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;
import java.util.UUID;

/**
 * {@code EventRepository} is a JPA event repository.
 *
 * <p/>
 *
 * @author Ram Ayall
 * @since 12/02/91
 */
public interface EventRepository extends PagingAndSortingRepository<Event, UUID> {

   // Event find(UUID id);

    List<Event> findAll();

    /*void create(Event event);

    Event update(Event event);

    void delete(UUID id);

    void delete(Event Event);*/
}
