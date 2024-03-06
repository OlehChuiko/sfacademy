public class CaseServiceRequest implements IServiceRequest {
    //validate information
    private String validateServiceRequest(ServiceRequestDTO data) {
        String errors = '';
        if (String.isBlank(data.status)) {
            errors = (String.isBlank(errors) ? '' : errors + ',') + 'status is mandatory';
        }

        if (String.isBlank(data.description)) {
            errors = (String.isBlank(errors) ? '' : errors + ',') + 'description is mandatory';
        }
        return errors;
    }

    private String createCase(ServiceRequestDTO request) {
        Case serviceRequestCase = new Case();
        serviceRequestCase.Origin = request.origin;
        serviceRequestCase.Subject = request.subject;
        insert serviceRequestCase;
        return serviceRequestCase.Id;
        //Any other implementation can added here or replaced
    }

    public String createServiceRequest(ServiceRequestDTO request) {
        String errors = validateServiceRequest(request);
        if (String.isNotBlank(errors)) {
            throw new BaseException(errors);
        }
        return createCase(request);
    }
}