package com.busyunit.embassy.service.controller;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.resource.EmployeesResource;
import com.busyunit.embassy.service.service.EmployeeService;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.Resources;
import org.springframework.hateoas.mvc.ControllerLinkBuilder;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

@RestController
@RequestMapping(value = "/api/v1/staff", produces = "application/hal+json")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(final EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

   /* @GetMapping
    public ResponseEntity<Resources<EmployeeResource>> all() {
        final List<EmployeeResource> collection =
                employeeService.getAll().stream().map(EmployeeResource::new).collect(Collectors.toList());
        final Resources<EmployeeResource> resources = new Resources<>(collection);
        final String uriString = ServletUriComponentsBuilder.fromCurrentRequest().build().toUriString();
        resources.add(new Link(uriString, "self"));
        return ResponseEntity.ok(resources);
    }*/


    @GetMapping
    public ResponseEntity<Resources<EmployeesResource>> getAllCustomers() {

        final List<Employee> allEmployees = new ArrayList<>(employeeService.getAll());
        Link link = linkTo(EmployeeController.class).withSelfRel();

        final Resources<EmployeesResource> resources = new Resources(allEmployees, link);
        return ResponseEntity.ok(resources);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Employee get(@PathVariable UUID id) {
        return employeeService.get(id);
    }

    @RequestMapping(value = "/filter", method = RequestMethod.GET)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Employee get(@RequestParam String name) {
        return employeeService.get(name);
    }

    @RequestMapping(method = RequestMethod.POST)
    @ResponseStatus(value = HttpStatus.OK)
    public ResponseEntity<?> create(@RequestBody Employee employee) {
        employeeService.create(employee);
        HttpHeaders headers = new HttpHeaders();
        ControllerLinkBuilder linkBuilder = linkTo(methodOn(EmployeeController.class).get(employee.getId()));
        headers.setLocation(linkBuilder.toUri());
        return new ResponseEntity<>(headers, HttpStatus.CREATED);
    }

    @RequestMapping(method = RequestMethod.PUT)
    @ResponseStatus(value = HttpStatus.OK)
    public void update(@RequestBody Employee employee) {
        employeeService.update(employee);
    }


    @DeleteMapping("/{id}")
    @ResponseStatus(value = HttpStatus.OK)
    public void delete(@PathVariable UUID id) {
        employeeService.delete(id);
    }
}
