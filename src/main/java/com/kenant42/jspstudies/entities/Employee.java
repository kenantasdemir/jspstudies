package com.kenant42.jspstudies.entities;

import lombok.Data;

@Data
public class Employee {

    private int id;
    private String name;

    private int age;

    private String email;

    private String address;

    private int salary;

    private String department;
}
