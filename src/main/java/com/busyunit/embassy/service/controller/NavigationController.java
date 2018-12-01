package com.busyunit.embassy.service.controller;

import com.busyunit.embassy.service.model.Navigation;
import com.busyunit.embassy.service.service.EmployeeService;
import com.busyunit.embassy.service.service.NavigationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PagedResourcesAssembler;
import org.springframework.hateoas.EntityLinks;
import org.springframework.hateoas.PagedResources;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;

@Slf4j
@RestController
@RequestMapping(value = "/api/v1/articles", produces = "application/hal+json")
public class NavigationController {

    @Autowired
    private  NavigationService navigationService;

    @GetMapping
    public ResponseEntity<PagedResources<Navigation>> AllPages(Pageable pageable, PagedResourcesAssembler assembler){
        Page<Navigation> products = navigationService.getAllPages(pageable);
        PagedResources<Navigation> pr = assembler.toResource(products,linkTo(NavigationController.class).withSelfRel());

        log.info("products.getTotalPages   {}", products.getTotalPages());
        HttpHeaders responseHeaders = new HttpHeaders();
        responseHeaders.add("Link",createLinkHeader(pr));
        return new ResponseEntity<>(assembler.toResource(products,linkTo(NavigationController.class).withSelfRel()),responseHeaders,HttpStatus.OK);
    }

    private String createLinkHeader(PagedResources<Navigation> pr){
        final StringBuilder linkHeader = new StringBuilder();
      //  linkHeader.append(buildLinkHeader(  pr.getLinks("first").get(0).getHref(),"first"));
        linkHeader.append(", ");
     //   linkHeader.append(buildLinkHeader( pr.getLinks("next").get(0).getHref(),"next"));
        return linkHeader.toString();
    }

    public static String buildLinkHeader(final String uri, final String rel) {
        return "<" + uri + ">; rel=\"" + rel + "\"";
    }
}
