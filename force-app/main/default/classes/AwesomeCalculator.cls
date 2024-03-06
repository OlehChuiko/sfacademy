public class AwesomeCalculator {
    public static Double add(Double x, Double y) {
        calculatorServices.CalculatorImplPort calculator = 
            new calculatorServices.CalculatorImplPort();
        return calculator.doAdd(x,y);
    }
    public static Integer divNodiv(Integer i, Integer j) {
        Integer result = 0;
        while( i>=j ) {
            i=i-j;
            result++;
        }
        return result;
    }
}