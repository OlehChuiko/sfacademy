/**
 * Created by oleh.chuiko on 14.06.2021.
 */

public abstract class SearchEngine {
    public String engineName;

    public  void describe(){
        System.debug(engineName);
    }
    public SearchEngine(String name) {
        this.engineName = name;
    }
}