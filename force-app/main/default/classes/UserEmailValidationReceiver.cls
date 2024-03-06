public class UserEmailValidationReceiver implements ChainReceiverInterface{

    public void handle(Object request) {
        UserRegistrationRequest userRegistrationRequest = (UserRegistrationRequest)request;

        if (!(Pattern.matches('^[a-zA-Z0-9._|\\\\%#~`=?&/$^*!}{+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$', userRegistrationRequest.email))) {
            throw new ApplicationException('email validation failed');
        }
    }
}