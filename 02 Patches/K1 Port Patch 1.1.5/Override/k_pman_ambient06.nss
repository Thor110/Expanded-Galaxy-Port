void main()
{
    SetFacingPoint(GetPosition(GetNearestObjectByTag("wp_facing")));
    SignalEvent(OBJECT_SELF,EventUserDefined(0));
}
