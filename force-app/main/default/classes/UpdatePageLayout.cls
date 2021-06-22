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
public class UpdatePageLayout {
    // Add custom field to page layout
    public Metadata.Layout buildLayout() {
        // Retrieve Account layout and section 
        List<Metadata.Metadata> layouts = 
            Metadata.Operations.retrieve(Metadata.MetadataType.Layout, 
            new List<String> {'Account-Account Layout'});
        Metadata.Layout layoutMd = (Metadata.Layout) layouts.get(0);
        Metadata.LayoutSection layoutSectionToEdit = null;
        List<Metadata.LayoutSection> layoutSections = layoutMd.layoutSections;
        for (Metadata.LayoutSection section : layoutSections) {
            if (section.label == 'Account Information') {
                layoutSectionToEdit = section;
                break;
            }
        }
        // Add the field under Account info section in the left column
        List<Metadata.LayoutColumn> layoutColumns = layoutSectionToEdit.layoutColumns;     
        List<Metadata.LayoutItem> layoutItems = layoutColumns.get(0).layoutItems;
        // Create a new layout item for the custom field
        Metadata.LayoutItem item = new Metadata.LayoutItem();
        item.behavior = Metadata.UiBehavior.Edit;
        item.field = 'c__AreaNumber__c';
        layoutItems.add(item);
        return layoutMd;
    }
}