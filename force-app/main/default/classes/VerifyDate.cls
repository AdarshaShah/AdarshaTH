public class VerifyDate {
	public static Date CheckDates(Date date1, Date date2) {				//method to handle potential checks against two dates
		if(DateWithin30Days(date1,date2)) {								//if date2 is within the next 30 days of date1, use date2.  Otherwise use the end of the month
			return date2;
		} 
        else {
			return SetEndOfMonthDate(date1);
		}
	}
    
	private static Boolean DateWithin30Days(Date date1, Date date2) {	//method to check if date2 is within the next 30 days of date1
		if( date2 < date1) { return false; }						//check for date2 being in the past		//check that date2 is within (>=) 30 days of date1
        	Date date30Days = date1.addDays(30); 						//create a date 30 days away from date1
		if( date2 >= date30Days )
            return false;
		else
            return true;
	}
	
	private static Date SetEndOfMonthDate(Date date1) {					//method to return the end of the month of a given date
		Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);
		return lastDay;
	}

}