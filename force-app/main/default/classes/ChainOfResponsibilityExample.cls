/**
 * Created by oleh.chuiko on 15.05.2021.
 */

public with sharing class ChainOfResponsibilityExample {
    public static void main() {
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();
        userRegistrationRequest.email = 'notvalid';
        userRegistrationRequest.age = 25;
        userRegistrationRequest.isoLocationCode = 'GB';

        //will return false
        system.debug(UserRegistrationValidationSender.isValid(userRegistrationRequest));

        userRegistrationRequest.email = 'someone@live.co.uk';
        userRegistrationRequest.age = 25;
        userRegistrationRequest.isoLocationCode = 'GB';

        //will return true
        system.debug(UserRegistrationValidationSender.isValid(userRegistrationRequest));

    }
}