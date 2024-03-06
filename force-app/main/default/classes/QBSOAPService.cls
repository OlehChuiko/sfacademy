global class QBSOAPService {
	webservice static List<String> authenticate(String strUserName, String strPassword){
   		system.debug(';;this is webservice');
        return new List<String>{'{F5FCCBC3-AA13-4d28-9DBF-3E571823F2BB}', 'none','nvu'};
    	
  }
  webservice static String closeConnection(String ticket) {
    // TODO Auto-generated method stub
    return null;
  }

  webservice static String connectionError(String ticket, String hresult, String message) {
    // TODO Auto-generated method stub
    return null;
  }

  webservice static String getLastError(String ticket) {
    // TODO Auto-generated method stub
    return null;
  }

  /*
  * A positive integer less than 100 represents the percentage of work completed. A value of 1 means one percent complete, a value of 100 means 100 percent complete--there is no more work. A negative value means an error has occurred and the Web Connector responds to this with a getLastError call. The negative value could be used as a custom error code.
  */
  webservice static Integer receiveResponseXML(String ticket, String response,
  String hresult, String message) {
    // a value of 100 means 100 percent complete--there is no more work
    return 100;
  }

  
  webservice  static String sendRequestXML(String ticket, String strHCPResponse,
  String strCompanyFileName, String qbXMLCountry, Integer qbXMLMajorVers,
  Integer qbXMLMinorVers) {
    // Example qbXML to Query for an Item
    // http://www.consolibyte.com/wiki/doku.php/quickbooks_qbxml_itemquery
    String query = '<?xml version=\"1.0\" encoding=\"utf-8\"?><?qbxml version=\"7.0\"?><QBXML><QBXMLMsgsRq onError=\"stopOnError\"><ItemQueryRq requestID=\"SXRlbVF1ZXJ5fDEyMA==\"><OwnerID>0</OwnerID></ItemQueryRq></QBXMLMsgsRq></QBXML>';
    return query;
  }
}