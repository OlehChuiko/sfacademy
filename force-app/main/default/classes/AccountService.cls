public class AccountService {

    public static void preventDeletionOfAccountWithOpportunities(Map<Id, Account> oldAccountMap){
        for (Account acc : [
            SELECT Id
            FROM Account
            WHERE Id IN (SELECT AccountId FROM Opportunity)
            AND Id IN :oldAccountMap.keySet()
        ]) {
           // oldAccountMap.get(acc.Id).addError('Cannot delete account with related opportunities.');
        }
    }
}