public class StringArrayTest {
    public static list<String> generateStringArray(Integer count){
        List<String> abc = new List<String>();
        for(Integer i=0;i<count;i++)
        {
            abc.add('Test '+ i);
        }
        system.debug(abc);
        return abc;
    }
}