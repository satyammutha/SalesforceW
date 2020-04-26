trigger DedupeRemainder on Account (after insert) {
	for(Account ac:Trigger.new){
        Case dedCase = new Case();
        dedCase.Subject = 'Dedupe This Account';
        dedCase.OwnerId = '0052v00000gfStXAAU';
        dedCase.AccountId = ac.Id;
        insert dedCase;
    }
}