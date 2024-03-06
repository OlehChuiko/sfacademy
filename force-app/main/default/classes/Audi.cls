public virtual class Audi extends Car {
    public static void priter() {
        System.debug('Audi printer');
    }
    public void example() {

        System.debug('Audi example');
        priter();
    }
    public override void detail(){
        System.debug('Audi');
    }
}