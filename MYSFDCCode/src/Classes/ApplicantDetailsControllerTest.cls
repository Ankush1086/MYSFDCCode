@istest
public class ApplicantDetailsControllerTest {
    
    public static testMethod void testfetchcontactid(){
        Opportunity opp=     TestDataFactory.createOpportunity('Pre bureau', 'Approved', 'Post-scorecard', 55000);
        contact con =   TestDataFactory.createContact('Hero','TLW');
        //ID ContactFetchId=ApplicantDetailsController.fetchContactId(Opp.id);
        LoanContactRelationship__c LCR=     TestDataFactory.createLoanContactRelationship(con.id,opp.id,'Applicant',null);
        Test.startTest();
        ID ContactFetchId=ApplicantDetailsController.fetchContactId(Opp.id);
        Test.stopTest();
        System.assertEquals(con.id,ContactFetchId);
        
    }
}