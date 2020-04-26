trigger CheckSecretInformation on Case (after insert,before update) {
    
    String childCaseSubject = 'Warning: Parent case may contain secret info';

    //Step1 : Create coll n add secretWords to Set
    Set<String> secretKeywords = new Set<String>();
    secretKeywords.add('Credit Card');
    secretKeywords.add('Social Security');
    secretKeywords.add('SSN');
    secretKeywords.add('Passport');
    secretKeywords.add('Bodyweight');

    List<Case> casesWithSecretInfo = new List<Case>();
    List<String> foundKeywords = new List<String>();
    for(Case myCase:Trigger.new){
        //Step2 : Check to see if our case contains secretkeywords
        if(myCase.Subject != childCaseSubject){
            for(String keyword : secretKeywords){
                if(mycase.Description != null &&  myCase.Description.containsIgnoreCase(keyword)){
                    casesWithSecretInfo.add(myCase);
                    System.debug('Case '+ myCase.Id +' include secret Keywords '+ keyword);
                    foundKeywords.add(keyword);
                }
            }
        }
    }
    List<Case> casesTOCreate = new List<Case>();
    //Step3 : If our case contains secret Keywords, create a child case
        for(Case casesWithSecretInfo : casesWithSecretInfo){
            Case childCase          = new Case();
            childCase.Subject       = childCaseSubject;
            childCase.ParentId      = casesWithSecretInfo.Id;
            childCase.IsEscalated   = true;
            childCase.Priority      = 'High';
            childCase.Description   = 'At least one of the following keywords were found :'+ foundKeywords;
            casesTOCreate.add(childCase);
        }
        insert casesTOCreate;
}