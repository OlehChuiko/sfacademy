/**
 * Created by oleh.chuiko on 13.12.2021.
 */

public class Employee {
    private String firstName;
    private String lastName;
    private String title;
    private String email;
    private String phone;
    private Employee employeeManager;

    public Employee(String firstName, String lastName, String title, String email, String phone){
        this.firstName = firstName;
        this.lastName = lastName;
        this.title = title;
        this.email = email;
        this.phone = phone;

    }

    public Employee(String firstName, String lastName, String title, String email, String phone, Employee employeeManager){
        this.firstName = firstName;
        this.lastName = lastName;
        this.title = title;
        this.email = email;
        this.phone = phone;
        this.employeeManager = employeeManager;

    }


}