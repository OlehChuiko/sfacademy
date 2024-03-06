public interface IComputerFactory {
    IProcessor getProcessor();
    IStorage getStorage();
    IMonitor getMonitor();
}