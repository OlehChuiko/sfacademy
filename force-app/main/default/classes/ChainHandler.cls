public abstract class ChainHandler implements ChainHandlerInterface{
    private ChainHandlerInterface next{get; set;}

    public ChainHandlerInterface setNext(ChainHandlerInterface next) {
        this.next = next;
        return this.next;
    }

    public virtual void handle(object request) {
        if( Next!= null ) {
            Next.Handle(request);
        }
    }
}