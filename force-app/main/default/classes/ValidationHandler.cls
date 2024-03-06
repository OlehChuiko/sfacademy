public class ValidationHandler {
    private List<ChainReceiverInterface> receivers;

    public ValidationHandler(List<ChainReceiverInterface> receivers) {
        this.receivers = receivers;
    }

    public void handle(object request) {
        for (ChainReceiverInterface receiver: this.receivers) {
            receiver.handle(request);
        }
    }

    public void setNext(ChainReceiverInterface next) {
        this.receivers.add(next);
    }

}