void main()
{
    ActionMoveToObject(GetObjectByTag("man26ac_wp_tech"),FALSE,0.5f);
    ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
