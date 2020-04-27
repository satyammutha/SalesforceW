@isTest
private class MultiTaskingTest {
    @isTest static void createAccount() {
        Account acc = new Account();
        acc.Name = 'XYZ';
        acc.Choice5__c = 'One;Two';
        insert acc;
    }
}
