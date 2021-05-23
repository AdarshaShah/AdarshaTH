trigger AssetTrigger on Asset (before Insert, after Insert) {
    system.debug(trigger.old);
}