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
public class PostInstallScript implements InstallHandler {
    // Deploy post-install metadata  
    public void onInstall(InstallContext context) {
        DeployMetadata deployUtil = new DeployMetadata();
        Metadata.DeployContainer container = deployUtil.constructDeploymentRequest();
        deployUtil.deploy(container);
    }
}