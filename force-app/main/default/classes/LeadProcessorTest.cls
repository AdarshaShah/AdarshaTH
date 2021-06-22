@isTest
private class LeadProcessorTest {
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
        LeadProcessor uca = new LeadProcessor();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
        //System.assertEquals(10, [select count() from contact where LeadSource = 'Dreamforce']);
    }
}