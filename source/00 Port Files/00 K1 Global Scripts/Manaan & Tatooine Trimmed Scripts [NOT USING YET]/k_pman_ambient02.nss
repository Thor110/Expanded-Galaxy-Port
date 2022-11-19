void main()
{
    SetFacingPoint(GetPosition(GetNearestObjectByTag("man26ad_comp01")));
    SignalEvent(OBJECT_SELF,EventUserDefined(0));
}
