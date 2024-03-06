public class AccountDao {
    public static Map<Id, List<Contact>> getAccountsToContactsMap(Set<Id> accIds) {
        List<Account> accsWithContacts = [
            SELECT
                Id,
                Name,
                (SELECT
                    Id,
                    FirstName,
                    LastName
                FROM Contacts)
            FROM Account
            WHERE Id IN :accIds
        ];

        Map<Id, List<Contact>> accIdToContactsMap = new Map<Id, List<Contact>>();

        for (Account acc : accsWithContacts) {
            accIdToContactsMap.put(acc.Id, acc.Contacts);
        }
        System.debug('10');
        return accIdToContactsMap;
    }
}