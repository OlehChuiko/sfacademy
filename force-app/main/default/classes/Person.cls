public class Person {

    private final String firstName;
    private final String lastName;
    private final String street;
    private final Integer age;

    public String getName() {
        return this.firstName + ' ' + this.lastName;
    }

    public Person (
        String firstName,
        String lastName,
        String street,
        Integer age
    ) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.street = street;
        this.age = age;
    }
}