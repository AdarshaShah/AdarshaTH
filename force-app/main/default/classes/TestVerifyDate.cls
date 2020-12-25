@istest
public class TestVerifyDate {
    @isTest static void testDateWithin30Days(){
        Date d = VerifyDate.CheckDates(date.parse('9/10/2019'), date.parse('9/15/2019'));
        System.assertEquals(date.parse('9/15/2019'), d);
    }
    @isTest static void testDateNotWithin30Days(){
        Date d = VerifyDate.CheckDates(date.parse('9/10/2019'), date.parse('11/15/2019'));
        System.assertEquals(date.parse('9/30/2019'), d);
    }
}