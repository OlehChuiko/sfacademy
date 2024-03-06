public class ProcessorFactory {
    public static IProcessor getInstance(String processorType) {
        return (IProcessor)Type.forName(processorType).newInstance();
    }
}