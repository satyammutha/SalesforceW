@isTest
public class HelloWorldTest {
    @isTest static void updateLead(){
        Lead myLead      = new Lead();
        myLead.FirstName = 'David';
        myLead.LastName  = 'Lie';
        myLead.Company   = 'Google';
        insert myLead;
        
        myLead.Company   = 'Pluralsight';
        update myLead;
    }
}