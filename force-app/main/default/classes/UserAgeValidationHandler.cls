public class UserAgeValidationHandler extends ChainHandler{

    public override void handle(object request) {

        UserRegistrationRequest userRegistrationRequest = (UserRegistrationRequest)request;

        if (userRegistrationRequest.age < 18 ) {
            throw new ApplicationException('age validation failed');
        }

        //invoke the base class if we are still valid to go to the next check
        super.handle(request);
    }
}