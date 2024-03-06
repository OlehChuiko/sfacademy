/**
 * Created by oleh.chuiko on 04.05.2021.
 */

public class HighConfig implements IComputerFactory{

    public IProcessor getProcessor() {
        return ProcessorFactory.getInstance('QuadCore');
    }

    public IStorage getStorage() {
        return StorageFactory.getInstance('SSD');
    }

    public IMonitor getMonitor() {
        return MonitorFactory.getInstance('LED');
    }
}