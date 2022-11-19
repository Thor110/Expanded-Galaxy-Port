// Sets a global that ultimatly shuts down the sentry droid
void main()
{
    SetGlobalBoolean("MAN_OFF_SEN",TRUE);
    object oDroid = GetNearestObjectByTag("man28_shield");
    if(GetIsObjectValid(oDroid))
    {
        SignalEvent(oDroid,EventUserDefined(10));
    }
}
