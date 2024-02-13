package com.nandamonroe.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nandamonroe.javaproject.models.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
    @SuppressWarnings("null") // Suppressing null warning
    List<Role> findAll();
    List<Role> findByName(String string);
}
