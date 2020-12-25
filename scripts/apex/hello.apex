// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents

string tempvar = 'Enter_your_name_here';
System.debug('Hello World!');
System.debug('My name is ' + tempvar);
List<AggregateResult> results  = [SELECT Industry, count(Id) total
    FROM Account GROUP BY Industry];
for (AggregateResult ar : results) {
    System.debug('Industry: ' + ar.get('Industry'));
    System.debug('Total Accounts: ' + ar.get('total'));
}
[System.debug(]FIND 'joey' IN ALL FIELDS RETURNING Account(Name), Contact(LastName, FirstName), Document(Name)];