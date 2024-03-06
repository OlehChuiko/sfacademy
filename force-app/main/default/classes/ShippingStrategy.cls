public class ShippingStrategy {
    public static ShippingService getShippingService(Order order) {
        // Use FedEx in the US or DHL otherwise
        if (order.ShippingCountry == 'United States') {
            return new FedExImpl();
        }
        else {
            return new DHLImpl();
        }
    }
}