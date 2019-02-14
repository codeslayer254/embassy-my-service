package com.busyunit.embassy.service.controller;

import com.busyunit.embassy.service.model.Event;
import com.busyunit.embassy.service.resource.EventAssembler;
import com.busyunit.embassy.service.resource.EventResource;
import com.busyunit.embassy.service.service.EventService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resources;
import org.springframework.hateoas.UriTemplate;
import org.springframework.hateoas.mvc.ControllerLinkBuilder;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

/**
 * {@code EventController} exposes event service.
 * <p/>
 *
 * @author Ram Ayall
 * @since 12/02/19
 */
@RestController
@Slf4j
@RequestMapping(value = "/api/v1/events")
public class EventController {

    private final EventService service;

    private EventAssembler eventAssembler;

    @Autowired
    public EventController(EventService service) {
        this.service = service;
        this.eventAssembler = new EventAssembler();
    }

  /*  @GetMapping
    public ResponseEntity<Resources<EventResource>> allEventsWithId() {
        final List<EventResource> collection =
                service.getEvents().stream().map(EventResource::new).collect(Collectors.toList());
        final Resources<EventResource> resources = new Resources<>(collection);
        final String uriString = ServletUriComponentsBuilder.fromCurrentRequest().build().toUriString();
        resources.add(new Link(uriString, "self"));
        return ResponseEntity.ok(resources);
    }*/



    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE}, value = "/{id}")
    public ResponseEntity<EventResource> read( @PathVariable("id") UUID id) {
        Event event = service.get(id);
        EventResource resource = eventAssembler.toResource(event);

        return new ResponseEntity<>(resource, HttpStatus.OK);
    }

    /**
     * Retrieves all books by manually creating self link.
     *
     * @param pageable
     * @param assembler
     * @return
     * @throws NoSuchMethodException
     */
    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE}, value = "/all")
    public HttpEntity<PagedResources<Event>> readAllNew(Pageable pageable, PagedResourcesAssembler assembler) throws NoSuchMethodException {

        Page<Event> page = service.getEvents(pageable);

        ControllerLinkBuilder ctrlBldr =
                linkTo(methodOn(EventController.class).readAllNew(pageable,
                        assembler));
        UriComponentsBuilder builder = ctrlBldr.toUriComponentsBuilder();

        int pageNumber = page.getNumber();
        int pageSize = page.getSize();
        int maxPageSize = 2000;

        builder.replaceQueryParam("page", pageNumber);
        builder.replaceQueryParam("size",
                pageSize <= maxPageSize ? page.getSize() : maxPageSize);

        Link selfLink =
                new Link(new UriTemplate(builder.build().toString()), "self");
        PagedResources<Event> resources = assembler.toResource(page);
        resources.removeLinks();
        resources.add(selfLink);

        return new ResponseEntity<>(resources, HttpStatus.OK);
    }

       @GetMapping
        public HttpEntity<PagedResources<Event>> allEvents(Pageable pageable, PagedResourcesAssembler assembler) {
        Page<Event> events = service.getEvents(pageable);
        return new ResponseEntity<>(assembler.toResource(events), HttpStatus.OK);
    }
}
