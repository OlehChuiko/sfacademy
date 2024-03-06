public with sharing class  StreamingAPIExampleController {
	@AuraEnabled
	public static String retrieveSessionId() {
		return UserInfo.getSessionId();
	}

}