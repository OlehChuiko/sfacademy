public class AddPrimaryContact implements Queueable {
    private Contact cont;
    private String state;
    public AddPrimaryContact(Contact cont, String state)
    {
        this.cont = cont;
        this.state = state;
    }
    
    public void execute(QueueableContext context)
    {
        List<Account> listAcc = [Select id,Name, (Select id,FirstName,LastName from contacts ) 
                                 from Account where BillingState = :state LIMIT 200];
        List<Contact> listCont = new List<Contact>();
        for(Account acc:listAcc)
        {
            Contact c = cont.clone(false,false,false,false);
            cont.AccountId = acc.Id;
            listCont.add(cont);
        }
        if(listCont.size()>0){
            insert listCont;	
        }
        
    }

}