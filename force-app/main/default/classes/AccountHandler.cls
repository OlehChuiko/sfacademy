public class AccountHandler {
    public static Account insertNewAccount(String name)
    {	Account ac;
     //some
        try{ 
            if(String.isEmpty(name)){return null;}
         ac = new Account(Name = name);
       	insert ac;
        }catch(DmlException e)
        {
             System.debug(e.getMessage());
            
             System.debug(e.getMessage());
        }
     return ac;
    }
}