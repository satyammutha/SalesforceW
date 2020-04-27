@isTest
private class LeadDisqualificationTest {
    @isTest static void createLead() {
        Lead myLead = new Lead();
        myLead.LastName = 'test';
        myLead.Company = 'ABC Corp';
        myLead.Status = 'Open - Not Contacted';
        insert myLead;
    }
}
