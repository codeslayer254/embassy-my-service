package com.busyunit.embassy.service.repository;

import com.busyunit.embassy.service.model.Employee;
import com.busyunit.embassy.service.model.Navigation;

import java.util.List;

public interface NavigationRepository {

    List<Navigation> findAll();
}
