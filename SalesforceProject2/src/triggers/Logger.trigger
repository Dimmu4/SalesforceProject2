trigger Logger on Case (before insert) {
 List<Id> caseIds = new List<Id>();
   for (Case c: trigger.new){
     caseIds.add(c.Id);
   }//for
   
    if (caseIds.size() > 1) {
        if (!System.isBatch() && !System.isFuture()) {
           swarmHelper.evaluateCaseRulesFuture(caseIds);
        }
    } else {
       swarmHelper.evaluateCaseRules(caseIds);
    }
}