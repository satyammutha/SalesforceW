trigger LeadDisqualification on Lead (before insert,before update) {

    String testValue = 'test';

    List<Lead> leadsToDisqualify = new List<Lead>();
    for(Lead myLead: Trigger.new){
        if( (myLead.FirstName != null && myLead.FirstName.equalsIgnoreCase(testValue)) ||
            (myLead.LastName != null && myLead.LastName.equalsIgnoreCase(testValue)) ){
                leadsToDisqualify.add(myLead);
            }
    }

    for(Lead disqualifyLeads:leadsToDisqualify){
        disqualifyLeads.Status = 'Disqualified';
    }
}