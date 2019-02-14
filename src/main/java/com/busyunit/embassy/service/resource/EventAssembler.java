package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.EventController;
import com.busyunit.embassy.service.model.Event;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.mvc.ResourceAssemblerSupport;

import static com.sun.tools.internal.xjc.reader.Ring.add;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

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
        EventResource resource = new EventResource(event);

       // Link selfLink = linkTo(
           //     methodOn(EventController.class).read(event.getId()))
             //   .withSelfRel();
      //  resource.add(selfLink);

        add(linkTo(methodOn(EventController.class).read(event.getId())).withSelfRel());

        return resource;
    }
}
