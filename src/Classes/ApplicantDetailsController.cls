public class ApplicantDetailsController { 
    @AuraEnabled
    public static Id fetchContactId(String opptyid)  
    {
        LoanContactRelationship__c lcr=new LoanContactRelationship__c();
        if(opptyid!=null){
        try{ 
        lcr=[SELECT ContactId__c FROM LoanContactRelationship__c where LoanApp__c =:opptyid limit 1];
        
        } 
        
        catch(Exception e){
            CAS_Logger.log('ApplicantDetailsController', 'ApplicantDetailsController.fetchContactId', '', '',e.getMessage());
            
             
        }}
        return lcr.ContactId__c; 
    }  

}