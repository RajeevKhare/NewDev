public class Demo{
    String s, genricDomains; 
    Integer i;
    //Boolean stopExecution = false;
    
    List<String> lstOfString;
    Set<String> setOfString;
    //Map<String, String> mapof String
    
    public Demo(){
        this.s = 'hii';
        this.i = i;
        genricDomains = 'gmail.com,yahoo.com,hotmail.com,outlook.com';
    }
    
    public Demo(String s, Integer i, Boolean stopExecution){
        this.s = s;
        this.i = i;
       // this.stopExecution = stopExecution;
    }
    public static void sayHello(){
        String say = 'Hello world';
       // s = 'hii';
        system.debug(say); 
        //if(stopExecution == true)
            return;
       // system.debug('is this print?'); 
    }
    
    
    public Set<String> findDomainSet(List<String> lstOfEmails){
        system.debug('lstOfEmails--------'+lstOfEmails);
        
        Set<String> setOfDomains = new Set<String>();
        
        for(String strEmail : lstOfEmails){
            system.debug('strEmail --------'+strEmail );
            
            String domain = strEmail.subStringAfter('@');
            
            if(genricDomains.containsIgnoreCase(domain))
                continue;
            setOfDomains.add(domain);
        }
        
        return setOfDomains;
    }
    
}