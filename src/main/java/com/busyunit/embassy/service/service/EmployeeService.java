package com.busyunit.embassy.service.service;

import com.busyunit.embassy.service.model.Company;
import com.busyunit.embassy.service.model.Employee;

import java.util.List;
import java.util.UUID;

public interface EmployeeService {

    Employee get(UUID id);

    Employee get(String name);

    List<Employee> getAll();

    void create(Employee employee);

    Employee update(Employee employee);

    void delete(UUID id);

    void delete(Employee employee);
}
