public class AccountHandler {
    // Method to update the description field of an Account record
    public static void updateAccountDescription(Id accountId, String newDescription) {
        Account acc = [SELECT Id, Description FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Description = newDescription;
        update acc;
    }
}
