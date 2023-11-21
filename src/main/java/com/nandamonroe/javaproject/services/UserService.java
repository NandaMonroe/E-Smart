package com.nandamonroe.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.nandamonroe.javaproject.models.User;
import com.nandamonroe.javaproject.repositories.RoleRepository;
import com.nandamonroe.javaproject.repositories.UserRepository;
 
@Service
public class UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder)     {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
    
    // 1
    public void saveWithUserRole( User user) {

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_USER"));
        userRepository.save(user);
    }
     
     // 2 
    public void saveUserWithAdminRole(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
        userRepository.save(user);
    }    
    
    // 3
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    // CREATE USER WITH PROFILE PIC

    // public void saveUsertoDB( String username, String firstName, String lastName, String pronouns, String email, Date dateOfBirth, String street, String city, String state, Integer zip, String phone, String emergency, String jobTitle, String shift, Date hireDate, String funFact, String password, String confirm){
        
    //     User user = new User();

    //     user.setUsername(username);
    //     user.setFirstName(firstName);
    //     user.setLastName(lastName);
    //     user.setPronouns(pronouns);
    //     user.setEmail(email);
    //     user.setDateOfBirth(dateOfBirth);
    //     user.setStreet(street);
    //     user.setCity(city);
    //     user.setState(state);
    //     user.setZip(zip);
    //     user.setPhone(phone);
    //     user.setEmergency(emergency);
    //     user.setJobTitle(jobTitle);
    //     user.setShift(shift);
    //     user.setHireDate(hireDate);
    //     user.setFunFact(funFact);
    //     user.setPassword(password);
    //     user.setConfirm(confirm);

    //     userRepository.save(user);
    // }


    public List<User> getAllUsers() {
        return (List<User>) userRepository.findAll();
    }


    public User getOneUserById(Long id) {
        Optional<User> user = userRepository.findById(id);
        return user.orElse(null);
    }
}
