package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.CompanyController;
import com.busyunit.embassy.service.controller.EmployeeController;
import com.busyunit.embassy.service.model.Employee;
import lombok.Getter;
import org.springframework.hateoas.ResourceSupport;

import java.util.UUID;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

@Getter
public class EmployeeResource extends ResourceSupport {

    private final Employee employee;

    public EmployeeResource(Employee employee) {
        this.employee = employee;
        final UUID id = employee.getId();
        //add(linkTo(EmployeeController.class).withRel("/api/v1/staff"));
        add(linkTo(methodOn(EmployeeController.class).get(id)).withSelfRel());
    }
}
