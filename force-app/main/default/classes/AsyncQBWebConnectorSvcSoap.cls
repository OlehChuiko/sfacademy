public class AsyncQBWebConnectorSvcSoap {
        public String endpoint_x = 'https://qbwc.realpagemaker.com/axis/services/QBWebConnectorSvcSoap';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://developer.intuit.com/', 'developerIntuitCom', 'http://developer.intuit.com', 'developerIntuitCom'};
        public AsyncDeveloperIntuitCom.connectionErrorResponse_elementFuture beginConnectionError(System.Continuation continuation,String in0,String in1,String in2) {
            developerIntuitCom.connectionError_element request_x = new developerIntuitCom.connectionError_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            return (AsyncDeveloperIntuitCom.connectionErrorResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.connectionErrorResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'connectionError',
              'http://developer.intuit.com',
              'connectionErrorResponse',
              'developerIntuitCom.connectionErrorResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.sendRequestXMLResponse_elementFuture beginSendRequestXML(System.Continuation continuation,String in0,String in1,String in2,String in3,Integer in4,Integer in5) {
            developerIntuitCom.sendRequestXML_element request_x = new developerIntuitCom.sendRequestXML_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            request_x.in3 = in3;
            request_x.in4 = in4;
            request_x.in5 = in5;
            return (AsyncDeveloperIntuitCom.sendRequestXMLResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.sendRequestXMLResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'sendRequestXML',
              'http://developer.intuit.com',
              'sendRequestXMLResponse',
              'developerIntuitCom.sendRequestXMLResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.getLastErrorResponse_elementFuture beginGetLastError(System.Continuation continuation,String in0) {
            developerIntuitCom.getLastError_element request_x = new developerIntuitCom.getLastError_element();
            request_x.in0 = in0;
            return (AsyncDeveloperIntuitCom.getLastErrorResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.getLastErrorResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getLastError',
              'http://developer.intuit.com',
              'getLastErrorResponse',
              'developerIntuitCom.getLastErrorResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.authenticateResponse_elementFuture beginAuthenticate(System.Continuation continuation,String in0,String in1) {
            developerIntuitCom.authenticate_element request_x = new developerIntuitCom.authenticate_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            return (AsyncDeveloperIntuitCom.authenticateResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.authenticateResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'authenticate',
              'http://developer.intuit.com',
              'authenticateResponse',
              'developerIntuitCom.authenticateResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.receiveResponseXMLResponse_elementFuture beginReceiveResponseXML(System.Continuation continuation,String in0,String in1,String in2,String in3) {
            developerIntuitCom.receiveResponseXML_element request_x = new developerIntuitCom.receiveResponseXML_element();
            request_x.in0 = in0;
            request_x.in1 = in1;
            request_x.in2 = in2;
            request_x.in3 = in3;
            return (AsyncDeveloperIntuitCom.receiveResponseXMLResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.receiveResponseXMLResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'receiveResponseXML',
              'http://developer.intuit.com',
              'receiveResponseXMLResponse',
              'developerIntuitCom.receiveResponseXMLResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.getOperationDescByNameResponse_elementFuture beginGetOperationDescByName(System.Continuation continuation,String in0) {
            developerIntuitCom.getOperationDescByName_element request_x = new developerIntuitCom.getOperationDescByName_element();
            request_x.in0 = in0;
            return (AsyncDeveloperIntuitCom.getOperationDescByNameResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.getOperationDescByNameResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getOperationDescByName',
              'http://developer.intuit.com',
              'getOperationDescByNameResponse',
              'developerIntuitCom.getOperationDescByNameResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.closeConnectionResponse_elementFuture beginCloseConnection(System.Continuation continuation,String in0) {
            developerIntuitCom.closeConnection_element request_x = new developerIntuitCom.closeConnection_element();
            request_x.in0 = in0;
            return (AsyncDeveloperIntuitCom.closeConnectionResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.closeConnectionResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'closeConnection',
              'http://developer.intuit.com',
              'closeConnectionResponse',
              'developerIntuitCom.closeConnectionResponse_element'}
            );
        }
        public AsyncDeveloperIntuitCom.getOperationDescsResponse_elementFuture beginGetOperationDescs(System.Continuation continuation) {
            developerIntuitCom.getOperationDescs_element request_x = new developerIntuitCom.getOperationDescs_element();
            return (AsyncDeveloperIntuitCom.getOperationDescsResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncDeveloperIntuitCom.getOperationDescsResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://developer.intuit.com',
              'getOperationDescs',
              'http://developer.intuit.com',
              'getOperationDescsResponse',
              'developerIntuitCom.getOperationDescsResponse_element'}
            );
        }
    }