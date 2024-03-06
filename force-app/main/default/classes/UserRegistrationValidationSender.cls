public class UserRegistrationValidationSender {

    public static Boolean isValid (UserRegistrationRequest userRegistrationRequest){

        try {
            //create the first handler in the chain;
            ChainHandler handler = new UserEmailValidationHandler();
            //then use SetNext to add the other validation handlers
            handler
                .setNext(new UserAgeValidationHandler())
                .setNext(new UserLocationValidationHandler());
            //then call the handle method
            handler.handle(userRegistrationRequest);

        } catch (ApplicationException ex) {
            //added system debug to view the errors when trying this example
            system.debug(ex);
            return false;
        }

        return true;
    }
}