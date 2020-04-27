trigger ChoiceCounterPopulate on Account (before insert,before update) {

    for(Account acc:Trigger.new){
        if(acc.Choice5__c != null){
        Integer count = acc.Choice5__c.countMatches(';') + 1;
        acc.Counter__c = count;
        System.debug('Number of Items found for '+acc.Name + ': '+count);
        }
        else{
            acc.Counter__c = 0;
            System.debug('No account found for :'+acc.Name);
        }
    }
}