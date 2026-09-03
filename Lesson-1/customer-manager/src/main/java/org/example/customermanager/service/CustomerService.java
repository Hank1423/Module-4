package org.example.customermanager.service;

import org.example.customermanager.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findAll();

    Customer findById(int id);

}