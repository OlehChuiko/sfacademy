/**
 * Created by oleh.chuiko on 04.05.2021.
 */

public with sharing class StandardConfig implements IComputerFactory{


    public IProcessor getProcessor() {
        return ProcessorFactory.getInstance('DualCore');
    }

    public IStorage getStorage() {
        return StorageFactory.getInstance('HDD');
    }

    public IMonitor getMonitor() {
        return MonitorFactory.getInstance('LCD');
    }
}