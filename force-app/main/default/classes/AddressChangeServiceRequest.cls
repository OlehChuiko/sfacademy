public class AddressChangeServiceRequest implements IServiceRequest {
    //validate information
    private String validateServiceRequest(ServiceRequestDTO data) {
        String errors = '';
        if (String.isBlank(data.addressLine1)) {
            errors = (String.isBlank(errors) ? '' : errors + ',') + 'addressLine1 is mandatory';
        }

        if (String.isBlank(data.state)) {
            errors = (String.isBlank(errors) ? '' : errors + ',') + 'state is mandatory';
        }
        return errors;
    }

    private String updateAddress(ServiceRequestDTO request) {
        List<Account> accounts = [
            SELECT Id,ShippingStreet,ShippingCity,ShippingState,ShippingPostalCode
            FROM Account
            WHERE Id = :request.accountId
        ];
        if (accounts != null && accounts.size() > 0) {
            Account account = accounts[0];
            account.ShippingStreet = request.addressLine1;
            account.ShippingCity = request.city;
            account.ShippingState = request.state;
            account.ShippingPostalCode = request.zip;
            update account;
            return account.Id;
        }
        //Any other implementation can added here or replaced
        return '';
    }

    public String createServiceRequest(ServiceRequestDTO request) {
        String errors = validateServiceRequest(request);
        if (String.isNotBlank(errors)) {
            throw new BaseException(errors);
        }
        return updateAddress(request);
    }
}