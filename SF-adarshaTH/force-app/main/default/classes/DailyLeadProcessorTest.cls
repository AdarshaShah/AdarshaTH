@istest
public class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    @testSetup 
    static void setup() {
        List<lead> leads = new List<lead>();
        // insert 10 leads
        for (Integer i=0;i<10;i++) {
            leads.add(new lead(lastName = 'ag', Company = 'asfd'));
        }
        insert leads;
    }
    static testmethod void test() {        
        Test.startTest();
		String jobId = System.schedule('ScheduledApexTest', CRON_EXP, new DailyLeadProcessor());         
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        //System.assertEquals(10, [select count() from contact where LeadSource = 'Dreamforce']);
    }
}