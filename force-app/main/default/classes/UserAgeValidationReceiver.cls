public class UserAgeValidationReceiver implements ChainReceiverInterface{

    public void handle(Object request) {
        UserRegistrationRequest userRegistrationRequest = (UserRegistrationRequest)request;

        if (userRegistrationRequest.age < 18 ) {
            throw new ApplicationException('age validation failed');
        }
    }
}