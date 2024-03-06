public class StorageFactory {

    public static IStorage getInstance(String storageType) {
        return (IStorage) Type.forName(storageType + 'Storage').newInstance();
    }
}