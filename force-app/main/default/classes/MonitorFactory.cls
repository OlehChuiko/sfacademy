public class MonitorFactory {

    public static IMonitor getInstance(String monitorType) {
        return (IMonitor)Type.forName(monitorType + 'Monitor').newInstance();
    }
}