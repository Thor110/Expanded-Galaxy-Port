void main()
{
    object oWP1 = GetObjectByTag("WP_man_litedrd03_01");
    object oWP2 = GetObjectByTag("WP_man_litedrd03_02");
    ActionMoveToObject(oWP1,FALSE,0.5f);
    ActionDoCommand(SetFacingPoint(GetPosition(oWP2)));
    ActionMoveToObject(oWP2,FALSE,0.5f);
    ActionDoCommand(SetFacingPoint(GetPosition(oWP1)));
    ActionDoCommand(SignalEvent(OBJECT_SELF,EventUserDefined(0)));
}
