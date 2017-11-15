/**
 * Developed by Timba Software Corp. www.timbasoftware.com admin@timbasoftware.com
 * @author Guillermo Freire <guillermo.freire@gmail.com>
 */
  @isTest public class Timer extends BBBController {

	public Timer(){
		super();
		String fcn = params.get('fcn');
		if (fcn == 'wait'){
			wait(Long.valueOf(params.get('millis')));
		}
		else{
			Long interval = Long.valueOf(params.get('interval'));
			Long last = Long.valueOf(params.get('last'));
			waitMinInterval(interval,last);
		}		
	}
		
	public void wait(Long milliseconds){	
		
		if(milliseconds<=0){
			return;
		}
		Integer i=0;
		Long start = Datetime.now().getTime();		
		while(Datetime.now().getTime()-start < milliseconds){
			i=0;
		}	
	}
	
	public Long waitMinInterval(Long interval, Long last){	
		wait(interval-Datetime.now().getTime()+last);
		return Datetime.now().getTime();	
	}
	
	public static void waitRequest(Long millis){
		if(!ProximitySearchUtil.isTest){ //CALLOUTS NOT SUPPORTED INSIDE TESTS
			HttpRequest req = new HttpRequest();
			req.setMethod('GET');
			req.setEndpoint('https://'+ProximitySearchUtil.getDomain()+Page.Timer.getUrl()+'?fcn=wait&millis='+millis);			  
			Http http = new Http();			
			http.send(req);
		}
	}
	
	public static void waitMinIntervalRequest(Long interval, Long last){		
		if(!ProximitySearchUtil.isTest){ //CALLOUTS NOT SUPPORTED INSIDE TESTS
			HttpRequest req = new HttpRequest();
			req.setMethod('GET');
			req.setEndpoint('https://'+ProximitySearchUtil.getDomain()+Page.Timer.getUrl()+'?fcn=waitMinInterval&interval='+interval+'&last='+last);			  
			Http http = new Http();			
			http.send(req);
		}
	}
	 static testMethod void run() {
        ProximitySearchUtil.isTest = true;
        Timer.waitRequest(1000);
        Timer.waitMinIntervalRequest(1000,Datetime.now().getTime()-2000);
        Timer.waitMinIntervalRequest(1000,Datetime.now().getTime()-1000);
        Timer.waitMinIntervalRequest(1000,Datetime.now().getTime()-500);
        Map<String,String> params = System.currentPageReference().getParameters();
        params.put('fcn','wait');
        params.put('millis','200');
        Timer t = new Timer();
        
        params.put('fcn','waitMinInterval');
        params.put('interval','500');
        params.put('last',String.valueOf(Datetime.now().getTime()));
        t = new Timer();
    }
}