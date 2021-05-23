public class BusScheduleCache {
    private Cache.OrgPartition part;

    public BusScheduleCache(){
        part = new Cache.OrgPartition('local.BusSchedule');
    }
    
    Public void putSchedule(String busLine, Time[] schedule){
        if (part != null){
            part.put(busline, schedule);
        }
    }
    
    Public Time[] getSchedule(String busLine){
        return (part != null && ((Time[])part.get(busLine) != null)) ? (Time[])part.get(busLine) : new List<Time>{Time.newInstance(8,0,0,0), Time.newInstance(17,0,0,0)};
    }  
}