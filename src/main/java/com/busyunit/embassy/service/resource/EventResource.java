package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.EmployeeController;
import com.busyunit.embassy.service.controller.EventController;
import com.busyunit.embassy.service.controller.NavigationController;
import com.busyunit.embassy.service.model.Event;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonUnwrapped;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import org.springframework.hateoas.ResourceSupport;

import java.util.UUID;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

/**
 * {@code EventResource} wraps an event entity as resource.
 * <p/>
 *
 * @author Ram Ayall
 * @since 08/04/18
 */
@Getter
@Setter
@EqualsAndHashCode(callSuper = true)
//@JsonIgnoreProperties({"id"})
public class EventResource extends ResourceSupport {

    @JsonUnwrapped
    private Event event;

    // for testing
    public EventResource() {
    }

    public EventResource(Event event) {
        this.event = event;

        final UUID id = event.getId();
        add(linkTo(methodOn(EventController.class).read(id)).withSelfRel());

      //  add(linkTo(methodOn(EventController.class).read(event.getId())).withSelfRel());
    }
}
