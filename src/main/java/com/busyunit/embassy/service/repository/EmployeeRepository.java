package com.busyunit.embassy.service.repository;

import com.busyunit.embassy.service.model.Company;
import com.busyunit.embassy.service.model.Employee;

import java.util.List;
import java.util.UUID;

public interface EmployeeRepository {

    Employee find(UUID id);

    Employee find(String name);

    List<Employee> findAll();

    void create(Employee employee);

    Employee update(Employee employee);

    void delete(UUID id);

    void delete(Employee employee);
}
