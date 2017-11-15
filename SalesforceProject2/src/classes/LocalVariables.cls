@istest
public class LocalVariables {

	public static Testing_Object__c obj_static = new Testing_Object__c();

    public static testmethod void LocalVariables()
    {
        Testing_Object__c obj = new Testing_Object__c();
        obj.NumberField1__c=100;
        obj.Number_Field_2__c=1;
        // some changes here
		if (obj.NumberField1__c == 100)
		{
		    Testing_Object__c obj1 = new Testing_Object__c();
			Testing_Object__c obj11 = new Testing_Object__c();
			obj1.NumberField1__c=200;
			obj11.NumberField1__c=2200;
			obj1.Number_Field_2__c=2;
			obj11.Number_Field_2__c=22;

			Testing_Object__c obj13;

			Testing_Object__c obj12 = new Testing_Object__c();
			obj12.NumberField1__c = GetNumber();


			obj13 = new Testing_Object__c();
		}

		for(Integer i = 0; i < 1; i++)
		{
			Testing_Object__c obj2 = new Testing_Object__c();
			obj2.NumberField1__c=300;
			obj2.Number_Field_2__c=3;
			if (obj2.Number_Field_2__c != 4)
			{
				Testing_Object__c obj3 = new Testing_Object__c();
				obj3.NumberField1__c=400;
				obj3.Number_Field_2__c=4;
			}
		}

		DummyClass dummyCls = new DummyClass(10);
		Integer test1 = dummyCls.Method_Without_Params();

		DummyClassEx dummyClsEx = new DummyClassEx();
		Integer test2 = dummyClsEx.Method_Without_ParamsEx();

    }

	public static testmethod void LocalVariablesFor()
	{
		Integer j = 1;
		for(Integer i = 0; i < 7; i++)
		{
			Integer k = i;
			j = i;

			if(j != k )
			{
				System.debug(j);
			}
			
		}
	}

	public static testmethod void LocalVariablesCycle()
	{
		Integer j = 1;
		for(Integer i = 0; i < 1; i += 5)
		{
			Integer k = i;
			j = i;

			if(j != k )
			{
				System.debug(j);
			}
			
		}
		 j = 1;
		for(Integer i = 0; i < 10; i += 5)
		{
			Integer k = i;
			j = i;

			if(j != k )
			{
				System.debug(j);
			}
			
		}
	}
	private static Integer GetNumber()
	{
		Integer a = 10;

		if (a == 10)
		{
			Integer b = 20;
			a = a + b;
		}

		return a;
	}
}