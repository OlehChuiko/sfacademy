public class QBWebConnectorSvcSoap {
        public String endpoint_x = 'https://qbwc.realpagemaker.com/axis/services/QBWebConnectorSvcSoap';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://developer.intuit.com/', 'developerIntuitCom', 'http://developer.intuit.com', 'developerIntuitCom'};
        public String connectionError(String in0,String in1,String in2) {
            developerIntuitCom.connectionError_element request_x = new developerIntuitCom.connectionError_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            developerIntuitCom.connectionErrorResponse_element response_x;
            Map<String, developerIntuitCom.connectionErrorResponse_element> response_map_x = new Map<String, developerIntuitCom.connectionErrorResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'connectionError',
              'http://developer.intuit.com',
              'connectionErrorResponse',
              'developerIntuitCom.connectionErrorResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.connectionErrorReturn;
        }
        public String sendRequestXML(String in0,String in1,String in2,String in3,Integer in4,Integer in5) {
            developerIntuitCom.sendRequestXML_element request_x = new developerIntuitCom.sendRequestXML_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            request_x.in3 = in3;
            request_x.in4 = in4;
            request_x.in5 = in5;
            developerIntuitCom.sendRequestXMLResponse_element response_x;
            Map<String, developerIntuitCom.sendRequestXMLResponse_element> response_map_x = new Map<String, developerIntuitCom.sendRequestXMLResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'sendRequestXML',
              'http://developer.intuit.com',
              'sendRequestXMLResponse',
              'developerIntuitCom.sendRequestXMLResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.sendRequestXMLReturn;
        }
        public String getLastError(String in0) {
            developerIntuitCom.getLastError_element request_x = new developerIntuitCom.getLastError_element();
            request_x.in0 = in0;
            developerIntuitCom.getLastErrorResponse_element response_x;
            Map<String, developerIntuitCom.getLastErrorResponse_element> response_map_x = new Map<String, developerIntuitCom.getLastErrorResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getLastError',
              'http://developer.intuit.com',
              'getLastErrorResponse',
              'developerIntuitCom.getLastErrorResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.getLastErrorReturn;
        }
        public String[] authenticate(String in0,String in1) {
            developerIntuitCom.authenticate_element request_x = new developerIntuitCom.authenticate_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            developerIntuitCom.authenticateResponse_element response_x;
            Map<String, developerIntuitCom.authenticateResponse_element> response_map_x = new Map<String, developerIntuitCom.authenticateResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'authenticate',
              'http://developer.intuit.com',
              'authenticateResponse',
              'developerIntuitCom.authenticateResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.authenticateReturn;
        }
        public Integer receiveResponseXML(String in0,String in1,String in2,String in3) {
            developerIntuitCom.receiveResponseXML_element request_x = new developerIntuitCom.receiveResponseXML_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            request_x.in3 = in3;
            developerIntuitCom.receiveResponseXMLResponse_element response_x;
            Map<String, developerIntuitCom.receiveResponseXMLResponse_element> response_map_x = new Map<String, developerIntuitCom.receiveResponseXMLResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'receiveResponseXML',
              'http://developer.intuit.com',
              'receiveResponseXMLResponse',
              'developerIntuitCom.receiveResponseXMLResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.receiveResponseXMLReturn;
        }
        public String[] getOperationDescByName(String in0) {
            developerIntuitCom.getOperationDescByName_element request_x = new developerIntuitCom.getOperationDescByName_element();
            request_x.in0 = in0;
            developerIntuitCom.getOperationDescByNameResponse_element response_x;
            Map<String, developerIntuitCom.getOperationDescByNameResponse_element> response_map_x = new Map<String, developerIntuitCom.getOperationDescByNameResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getOperationDescByName',
              'http://developer.intuit.com',
              'getOperationDescByNameResponse',
              'developerIntuitCom.getOperationDescByNameResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.getOperationDescByNameReturn;
        }
        public String closeConnection(String in0) {
            developerIntuitCom.closeConnection_element request_x = new developerIntuitCom.closeConnection_element();
            request_x.in0 = in0;
            developerIntuitCom.closeConnectionResponse_element response_x;
            Map<String, developerIntuitCom.closeConnectionResponse_element> response_map_x = new Map<String, developerIntuitCom.closeConnectionResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'closeConnection',
              'http://developer.intuit.com',
              'closeConnectionResponse',
              'developerIntuitCom.closeConnectionResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.closeConnectionReturn;
        }
        public String[] getOperationDescs() {
            developerIntuitCom.getOperationDescs_element request_x = new developerIntuitCom.getOperationDescs_element();
            developerIntuitCom.getOperationDescsResponse_element response_x;
            Map<String, developerIntuitCom.getOperationDescsResponse_element> response_map_x = new Map<String, developerIntuitCom.getOperationDescsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getOperationDescs',
              'http://developer.intuit.com',
              'getOperationDescsResponse',
              'developerIntuitCom.getOperationDescsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.getOperationDescsReturn;
        }
}