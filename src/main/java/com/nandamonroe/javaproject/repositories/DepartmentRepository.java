package com.nandamonroe.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nandamonroe.javaproject.models.Department;

@Repository
public interface DepartmentRepository extends CrudRepository<Department, Long> {
    @SuppressWarnings("null") // Suppressing null warning
    List<Department> findAll();
}
