package com.nandamonroe.javaproject.services;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;

import com.nandamonroe.javaproject.models.Department;

public class CustomUserDetails extends org.springframework.security.core.userdetails.User {

    private final Department department;

    public CustomUserDetails(String username, String password, List< GrantedAuthority> authorities, Department department) {
        super(username, password, authorities);
        this.department = department;
    }

    public Department getDepartment() {
        return department;
    }
}
