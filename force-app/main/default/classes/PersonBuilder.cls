public class PersonBuilder {

    private String firstName;
    private String lastName;
    private String street;
    private Integer age;

    public PersonBuilder() {
        this.firstName = 'fName';
        this.lastName = 'lName';
        this.street = 'street';
        this.age = 18;
    }

    public PersonBuilder setFirstName(String firstName) {
        this.firstName = firstName;
        return this;
    }

    public PersonBuilder setLastName(String lastName) {
        this.lastName = lastName;
        return this;
    }

    public PersonBuilder setStreet(String street) {
        this.street = street;
        return this;
    }

    public PersonBuilder setAge(Integer age) {
        this.age = age;
        return this;
    }

    public Person build() {
        return new Person(
            this.firstName,
            this.lastName,
            this.street,
            this.age
        );
    }

}