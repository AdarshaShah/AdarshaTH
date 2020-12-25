public class NewCaseListController {
    public List<Case> getNewCases(){
        List<Case> abc = [select Id, CaseNumber from Case where status= 'new' ];
        return abc;
    }
}