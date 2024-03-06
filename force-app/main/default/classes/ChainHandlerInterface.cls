public interface ChainHandlerInterface {
    ChainHandlerInterface setNext(ChainHandlerInterface next);
    void Handle(object request);
}