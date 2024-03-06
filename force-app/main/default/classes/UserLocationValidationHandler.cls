public class UserLocationValidationHandler Extends ChainHandler{

    public override void handle(object request) {

        UserRegistrationRequest userRegistrationRequest = (UserRegistrationRequest)request;

        if (userRegistrationRequest.isoLocationCode != 'GB' ) {
            throw new ApplicationException('location validation failed');
        }

        //invoke the base class if we are still valid to go to the next check
        super.handle(request);
    }
}