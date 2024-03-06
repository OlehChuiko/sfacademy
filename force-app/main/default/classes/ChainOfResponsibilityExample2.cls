public class ChainOfResponsibilityExample2 {
    public static void main() {
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();
        userRegistrationRequest.email = 'andakscnalsnc';
        userRegistrationRequest.age = 25;
        userRegistrationRequest.isoLocationCode = 'GB';

//will return false
        system.debug(UserRegValidationSender.isValidUsingReceivers(userRegistrationRequest));

        userRegistrationRequest.email = 'someone@live.co.uk';
        userRegistrationRequest.age = 36;
        userRegistrationRequest.isoLocationCode = 'GB';

//will return true
        system.debug(UserRegValidationSender.isValidUsingReceivers(userRegistrationRequest));

    }
}