package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.EventController;
import com.busyunit.embassy.service.model.Event;
import org.springframework.hateoas.mvc.ResourceAssemblerSupport;


/**
 * {@code EventAssembler} converts an event to event resource with self link.
 * <p/>
 *
 * @author Ram Ayall
 * @since 12/12/19
 */
public class EventAssembler extends ResourceAssemblerSupport<Event, EventResource> {

    public EventAssembler() {
        super(EventController.class, EventResource.class);
    }

    @Override
    public EventResource toResource(Event event) {
        return new EventResource(event);
    }
}
