package com.nandamonroe.javaproject.services;

import com.nandamonroe.javaproject.models.Department;
import com.nandamonroe.javaproject.models.Role;
import com.nandamonroe.javaproject.models.User;
import com.nandamonroe.javaproject.repositories.UserRepository;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImplementation implements UserDetailsService {

    private final UserRepository userRepository;

    public UserDetailsServiceImplementation(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        User user = userRepository.findByUsername(username);

        System.out.println("THIS USER IS FROM DETAILS SERVICE------------" + user);

        if (user == null) {
            throw new UsernameNotFoundException("User not found with username: " + username);
        }

        // Load additional information such as the department
        Department department = user.getDepartment();

        // Create your UserDetails object, considering the loaded information
        UserDetails userDetails = new CustomUserDetails(
                user.getUsername(),
                user.getPassword(),
                getAuthorities(user),
                department // Include the department or any other related information
        );

        return userDetails;

        // return new org.springframework.security.core.userdetails.User(
        //         user.getUsername(),
        //         user.getPassword(),
        //         getAuthorities(user)
        // );
    }

    private List<GrantedAuthority> getAuthorities(User user) {
        List<GrantedAuthority> authorities = new ArrayList<>();
        for (Role role : user.getRoles()) {
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(role.getName());
            authorities.add(grantedAuthority);
        }
        return authorities;
    }
}
