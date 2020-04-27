@isTest
private class checkSecretInfoTest {
    @isTest static void createCase() {
        Case myCase         = new Case();
        myCase.Subject      = 'New Subject Testing';
        myCase.Description  = 'Credit Card';
        insert myCase;
        System.debug('Case ' + myCase.Id + ' created with description: ' + myCase.Description); 
    }
}
