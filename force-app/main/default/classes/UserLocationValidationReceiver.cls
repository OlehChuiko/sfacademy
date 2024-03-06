public class UserLocationValidationReceiver  implements ChainReceiverInterface{

    public void handle(Object request) {
        UserRegistrationRequest userRegistrationRequest = (UserRegistrationRequest)request;

        if (userRegistrationRequest.isoLocationCode != 'GB' ) {
            throw new ApplicationException('location validation failed');
        }
    }
}