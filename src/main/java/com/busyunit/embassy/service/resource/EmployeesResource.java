package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.EmployeeController;
import com.busyunit.embassy.service.model.Employee;
import lombok.Getter;
import org.springframework.hateoas.ResourceSupport;

import java.util.List;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;

@Getter
public class EmployeesResource extends ResourceSupport {

    private final List<Employee> allEmployees;

    public EmployeesResource(List<Employee> allEmployees){
        this.allEmployees = allEmployees;
        this.add(linkTo(EmployeeController.class).withRel("/api/v1/staff"));
    }

}
