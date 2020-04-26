@isTest
public class DedupeRemainderTest {
    @isTest static void createAccount(){
        Account acc = new Account();
        acc.Name = 'New Tech';
        insert acc;
    }
}