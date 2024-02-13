package com.nandamonroe.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nandamonroe.javaproject.models.Department;
import com.nandamonroe.javaproject.repositories.DepartmentRepository;

@Service
public class DepartmentService {
        
    @Autowired
    DepartmentRepository departmentRepository;

    public List<Department> allDepartments(){
        return departmentRepository.findAll();
    }
    
    @SuppressWarnings("null") // Suppressing null warning
    public Department createDepartment(Department department){
        return departmentRepository.save(department);
    }

    @SuppressWarnings("null") // Suppressing null warning
    public Department findDepartment(Long id) {
        Optional<Department> optionalDepartment = departmentRepository.findById(id);
        if(optionalDepartment.isPresent()) {
            return optionalDepartment.get();
        } else {
            return null;
        }
    }

    @SuppressWarnings("null") // Suppressing null warning
    public Department findDepartmentById(Long exampleId) {
        Optional<Department> optionalDepartment = departmentRepository.findById(exampleId);
        return optionalDepartment.orElse(null);
    }

    public long getUsersCount(){
        return departmentRepository.count();
    }
}
