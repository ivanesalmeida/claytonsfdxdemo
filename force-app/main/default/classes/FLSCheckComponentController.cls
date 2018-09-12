public with sharing class FLSCheckComponentController {

    public FLSCheckComponentController() {

    }

    @AuraEnabled
    public static Account findAll() {
        Account accountToReturn = [SELECT id, name, Revenue__c FROM Account LIMIT 1];
        
        if (!Schema.sObjectType.Account.fields.Name.isAccessible() || !Schema.sObjectType.Account.fields.Revenue__c.isAccessible()){
          throw new AuraHandledException('No Access!');
        }

        return accountToReturn;
    }
}
