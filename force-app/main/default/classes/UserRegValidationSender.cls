public class UserRegValidationSender {
    public static boolean isValidUsingReceivers (UserRegistrationRequest userRegistrationRequest){
        try {
            List <ChainReceiverInterface> receivers = new List<ChainReceiverInterface> {
                new UserEmailValidationReceiver(),
                new UserAgeValidationReceiver(),
                new UserLocationValidationReceiver()
            };

            ValidationHandler handler = new ValidationHandler(receivers);

            handler.Handle(userRegistrationRequest);

        } catch  (ApplicationException ex) {
            system.debug(ex);
            return false;
        }
        return true;
    }

    public interface Example{
        void mte();
    }
}