/**
* @author dreamforce16-demo@welkinsuite.com
* @description Test class
*/ 
@istest
public class DMLOperations {
    public static testmethod void Dml_Insert_And_Update_Single_Sobject_Operations() {
        Testing_Object__c obj = new Testing_Object__c();
        insert obj;
		String variable1;
		System.debug('hello world');
		String testVar;

        obj.TextField1__c='Hello';
        update obj;
		//..//
    }

    public static testmethod void Dml_Upsert_Update_Operation_Single_Sobject() {
        Testing_Object__c obj = new Testing_Object__c();
        insert obj;
        obj.TextField1__c='Hello';// dkjfdkjfkj
        upsert obj;//???????? jdsdfdfghdfghdfghhfdjkhfdjhf ??????!!
    }
    public static testmethod void Dml_Upsert_Insert_Single_Sobject_Operation() {
        Testing_Object__c obj = new Testing_Object__c();
        upsert obj;
    }

    public static testmethod void Dml_Upsert_Update_External_Single_Sobject_Operation() {
        Testing_Object__c obj = new Testing_Object__c();
        obj.External_ID__c='Hello';
        insert obj;

        obj = new Testing_Object__c();
        obj.External_ID__c='Hello';
        upsert obj External_ID__c;
    }

    public static testmethod void Dml_Delete_And_Undelete_Single_Sobject_Operations() {
        Testing_Object__c obj = new Testing_Object__c();
        insert obj;
        delete obj;
        undelete obj;
    }

    public static testmethod void Dml_Merge_Single_Sobject_Operations() {
        Account obj = new Account();
        obj.Name='Master Account';
        insert obj;

        Account obj2 = new Account();
        obj2.Name='Slave Account';
        obj2.Sic='Slave Sic';
        insert obj2;

        merge obj obj2;
    }
}