public class ServiceRequestFactory {

    public IServiceRequest getServiceRequest(string serviceRequestType) {
        IServiceRequest requestObject;
        if (string.isNotBlank(serviceRequestType)) {
            string request = serviceRequestType.toUpperCase();
            switch on request {
                when 'ADDRESS CHANGE REQUEST' {
                    requestObject = new AddressChangeServiceRequest();
                }
                when 'CASE CREATION' {
                    requestObject = new CaseServiceRequest();
                }
                when else {
                    throw new BaseException('Service Type is not valid');
                }
            }
            return requestObject;
        }
        throw new BaseException('Service Type not provided');
    }
}