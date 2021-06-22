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
public class DeployMetadata {
    // Create metadata container 
    public Metadata.DeployContainer constructDeploymentRequest() {
        Metadata.DeployContainer container = new Metadata.DeployContainer();
        // Add components to container         
        Metadata.Layout layoutMetadata = new UpdatePageLayout().buildLayout();
        container.addMetadata(layoutMetadata);
        return container;
    }
    // Deploy metadata
    public void deploy(Metadata.DeployContainer container) {
        // Create callback. 
        PostInstallCallback callback = new PostInstallCallback();
        // Deploy the container with the new components. 
        Id asyncResultId = Metadata.Operations.enqueueDeployment(container, callback);
    }
}