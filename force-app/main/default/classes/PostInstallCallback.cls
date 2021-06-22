/**
 * @description       : 
 * @test class        : 
 * @author            : adarsha_shah@persistent.com
 * @reviewer          : 
 * @last modified on  : 21-06-2021
 * @last modified by  : adarsha_shah@persistent.com
 * Modifications Log 
 * Ver   Date         Author                        Modification
 * 1.0   21-06-2021   adarsha_shah@persistent.com   Initial Version
**/
public class PostInstallCallback implements Metadata.DeployCallback {
    public void handleResult(Metadata.DeployResult result,
        Metadata.DeployCallbackContext context) {
        if (result.status == Metadata.DeployStatus.Succeeded) {
            // Deployment was successful, take appropriate action.
            System.debug('Deployment Succeeded!');
        } else {
            // Deployment wasn’t successful, take appropriate action.
	    System.debug('Deployment Failed!');
        }
    }
}