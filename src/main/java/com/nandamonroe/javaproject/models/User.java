package com.nandamonroe.javaproject.models;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // @NotEmpty(message="Profile picture is required!")
    private String profilePic;
    
    private String username;

    @NotEmpty(message="First Name is required!")
    private String firstName;

    @NotEmpty(message="Last Name is required!")
    private String lastName;

    private String pronouns;

    @NotEmpty(message="Email is required!")
    private String email;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateOfBirth;

    private String street;
    private String city;
    private String state;
    private Integer zip;

    @NotEmpty(message="Contact is required!")
    private String phone;

    private String emergency;

    @NotEmpty(message="Job Title is required!")
    private String jobTitle;

    private String shift;

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hireDate;

    private String funFact;

    @Size(min=6)
    private String password;

    @Transient
    private String confirm;

    @Column(updatable=false)
    private Date createdAt;

    private Date updatedAt;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "users_roles", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private List<Role> roles;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="department_id")
    private Department department;

    public User() {
        // Generate a random 6-digit number
        this.username = generateRandomUsername();
    }

    private String generateRandomUsername() {
        Random random = new Random();
        // Generate a random number between 100000 and 999999
        int randomNumber = random.nextInt(900000) + 100000;
        String randomString = String.valueOf(randomNumber);
        return randomString;
    }

    public String getUsername() {
        return username;
    }

    public static void main(String[] args) {
        User user = new User();
        System.out.println("Generated 6-digit number: " + user.getUsername());
    }


    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getProfilePic() {
        return this.profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPronouns() {
        return this.pronouns;
    }

    public void setPronouns(String pronouns) {
        this.pronouns = pronouns;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {
        return this.dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getStreet() {
        return this.street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Integer getZip() {
        return this.zip;
    }

    public void setZip(Integer zip) {
        this.zip = zip;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmergency() {
        return this.emergency;
    }

    public void setEmergency(String emergency) {
        this.emergency = emergency;
    }

    public String getJobTitle() {
        return this.jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }


    public String getShift() {
        return this.shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public Date getHireDate() {
        return this.hireDate;
    }

    public void setHireDate(Date hireDate) {
        this.hireDate = hireDate;
    }

    public String getFunFact() {
        return this.funFact;
    }

    public void setFunFact(String funFact) {
        this.funFact = funFact;
    }
    public void setusername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirm() {
        return this.confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    public Date getCreatedAt() {
        return this.createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return this.updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public List<Role> getRoles() {
        return this.roles;
    }

    public void setRoles(List<Role> roles) {
        this.roles = roles;
    }

    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Department getDepartment() {
        return this.department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }



    @Override
    public String toString() {
        return "{" +
            " id='" + getId() + "'" +
            ", profilePic='" + getProfilePic() + "'" +
            ", firstName='" + getFirstName() + "'" +
            ", lastName='" + getLastName() + "'" +
            ", pronouns='" + getPronouns() + "'" +
            ", email='" + getEmail() + "'" +
            ", dateOfBirth='" + getDateOfBirth() + "'" +
            ", street='" + getStreet() + "'" +
            ", city='" + getCity() + "'" +
            ", state='" + getState() + "'" +
            ", zip='" + getZip() + "'" +
            ", phone='" + getPhone() + "'" +
            ", emergency='" + getEmergency() + "'" +
            ", jobTitle='" + getJobTitle() + "'" +
            ", shift='" + getShift() + "'" +
            ", hireDate='" + getHireDate() + "'" +
            ", funFact='" + getFunFact() + "'" +
            ", username='" + getUsername() + "'" +
            ", password='" + getPassword() + "'" +
            ", confirm='" + getConfirm() + "'" +
            ", createdAt='" + getCreatedAt() + "'" +
            ", updatedAt='" + getUpdatedAt() + "'" +
            ", roles='" + getRoles() + "'" +
            "}";
    }


}

    


