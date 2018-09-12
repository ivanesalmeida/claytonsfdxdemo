public with sharing class FLSCheckComponentController {

    public FLSCheckComponentController() {

    }

    @AuraEnabled
    public static List<Account> findAll() {

        return [SELECT id, name, Revenue__c FROM Account LIMIT 1];
    }
}
