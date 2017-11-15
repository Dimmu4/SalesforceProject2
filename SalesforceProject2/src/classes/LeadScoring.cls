public virtual class LeadScoring  {
    public Boolean redirect{get;set;}
    public String redirectionUrl{get;set;}
    protected Map<String,String> params;
    protected String paramsString{get{return getParamsString();}}
    
    public LeadScoring(){   
        getParameters();    
    }
    public void getParameters(){
    //test
        if (System.currentPageReference() != null){
            params = System.currentPageReference().getParameters();
        }   
        else{
            params = new Map<String,String>();
        }
    }
    //TODO: diz handle
    public string getLinkTo(PageReference page){
        return page.getUrl()+'?'+paramsString;
    }
    
    public void setRedirect(PageReference page)
    {
        redirect = true;
        redirectionUrl = getLinkTo(page);
    }
    
    public Boolean isEvent(String eventName){
    
        return params.containsKey(eventName);
    }
    
    public string getParamsString(){
        string s = '';
        for(String key : params.keySet()){      
            s = s + '&' + key + '=' + params.get(key);      
        }
        if(s.length()==0){
            return s;
        }
        return s.substring(1);
    }
}