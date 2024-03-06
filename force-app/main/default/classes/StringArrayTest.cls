public class StringArrayTest {
    public static List<String> generateStringArray(Integer n)
    {
        List<String> mylist = new List<String>();
        for(Integer i=0;i<n;i++)
        {
            mylist.add('Test '+ i);
            System.debug(mylist[i]);
        }
        return mylist;
    }
}