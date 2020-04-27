@isTest
private class ChoiceCounterPopulateTest {
    @isTest static void createAccount() {
        //Create an Account with MSP items
        Account acc     = new Account();
        acc.Name        = 'XYZ';
        acc.Choice5__c  = 'One;Two;Three';
        insert acc;

        //Update an Account with No MSP items
        acc.Choice5__c  = null;
        update acc;
    }
}
