global class EmailHandler implements Messaging.InboundEmailHandler {
    @TestVisible
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope) {
        Messaging.InboundEmailResult result = new Messaging.InboundEmailresult();
        String inputString= email.subject;
        String reser= email.plainTextBody;
        String sub=inputString.substringAfter('Number');
        String sub2=sub.substringBefore('has');
        sub2 = sub2.trim();
        String r1=reser.substringAfter('is');
        String r2=r1.substringBefore('Please');
        
       
        result.success = true;
        System.debug(result);
        return result;
    }
}