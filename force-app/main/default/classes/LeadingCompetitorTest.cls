@isTest
private class LeadingCompetitorTest {
    @isTest static void createOpportunity() {
        Opportunity opp = new Opportunity();
        opp.Name = 'New Deal';
        opp.CloseDate = Date.today();
        opp.StageName = 'Prospecting';
        opp.Competitor_1_Price__c = 10000;
        opp.Competitor_2_Price__c = 15000;
        opp.Competitor_3_Price__c = 20000;
        opp.Competitor_1__c = 'Salesforce';
        opp.Competitor_2__c = 'Google';
        opp.Competitor_3__c = 'Microsoft';
        insert opp;
        System.debug('Opportunity: '+opp.Name +' inserted with all competitor fields populated');
    }
}
