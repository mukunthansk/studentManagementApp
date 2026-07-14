package com.example;

public class App {

    public static void main(String[] args){

       Student s1 = new Student(101, "John");
Student s2 = new Student(102, "David");
Student s3 = new Student(103, "Alice");

s1.display();
s2.display();
s3.display();

System.out.println("Student Management Application");

    }

}