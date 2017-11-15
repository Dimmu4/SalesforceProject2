@isTest 
private class LeadScoringTests {

	static testMethod void run() {
        LeadScoring c = new LeadScoring();
        PageReference pr = new PageReference('http://www.force.com');
        c.getLinkTo(pr);
        c.setRedirect(pr);
		c.isEvent('');
        c.getParamsString();
    }
}