public abstract class TestClassHere {
    public static String objectVar = 'test';
    public virtual void outerDynamicMethod() {
        staticMethod();
        objectVar = 'override';
    }

    public virtual void staticMethod(){

    }
}