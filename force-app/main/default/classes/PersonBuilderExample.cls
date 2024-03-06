public class PersonBuilderExample {
    public static void main() {
        Person myPerson = new PersonBuilder()
                .setFirstName('Petro')
                .setLastName('Totak')
                .setAge(24)
                .build();
    }
}