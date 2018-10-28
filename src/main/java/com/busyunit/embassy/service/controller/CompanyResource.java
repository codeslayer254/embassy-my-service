package com.busyunit.embassy.service.controller;

import com.busyunit.embassy.service.model.Company;
import lombok.Getter;
import org.springframework.hateoas.ResourceSupport;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

@Getter
public class CompanyResource extends ResourceSupport {

    private final Company company;

    // Todo : Return DTO instead of Entity

    public CompanyResource(final Company company){
        this.company = company;
        final long id = company.getId();
        add(linkTo(CompanyController.class).withRel("/secured/company"));
        add(linkTo(methodOn(CompanyController.class).get(id)).withSelfRel());
    }
}
