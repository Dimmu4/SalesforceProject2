@istest
public class Constructors {
	/**
	  * @description 
	 */
	public static void NotTestConstructorsOperations() {
		System.debug('Dreamforce, hello!');
		Account acc = new Account();
		acc.Name = 'Test name';
		DummyClass obj;
		obj = new DummyClass();
		obj.dummyField = '1';
		obj = new DummyClass(1);
		obj.dummyField = '2';
		obj = new DummyClass(1, 'hello');
		obj.dummyField = '3';
		obj = new DummyClass(acc);
		obj.dummyField = '4';
	}

	public static testmethod void ConstructorsOperations() {
		Account acc = new Account();
		acc.Name = 'Test name';

		DummyClass obj;
		obj = new DummyClass();
		obj.dummyField = '1'; //

		obj = new DummyClass(1);
		obj.dummyField = '2';

		obj = new DummyClass(1, 'hello'); //
		obj.dummyField = '3';

		obj = new DummyClass(acc);
		obj.dummyField = '4';
	}

	public static testmethod void SystemConstructors() {
		ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL, 'my error msg');
		myMsg.getSeverity();
	}

	public static testmethod void ScopeVariable() {
		Integer globalA;
		globalA = 10;
		for (Integer iInFor = 0; iInFor< 3; iInFor++)
		{
			Integer ForA = globalA - iInFor;
			System.debug(ForA);
		}

		globalA = 100;
	}

	public static testmethod void SimpleAsigment() {
		Integer globalA;
		globalA = 10;
	}

	public static testmethod void SimpleFor() {
		for (Integer i = 0; i< 2; i++)
		{
			System.debug(i);

		}
	}

	public static testmethod void CallStack() {
		integer i;
		i = 1;
		i = 2;
		i = 3;
		i = CallStack1();
		System.debug(i);
	}

	public static integer CallStack1() {
		integer i1 = CallStack2();
		return i1;
	}

	public static integer CallStack2() {
		integer i2 = CallStack3();
		return i2;
	}

	public static integer CallStack3() {
		integer i3 = 3;
		DummyClass obj;
		obj = new DummyClass(1, 2);
		obj.dummyField = '3';
		return i3;
	}

	public static integer CallStack4() {
		integer i4 = 104;
		return i4;
	}

}