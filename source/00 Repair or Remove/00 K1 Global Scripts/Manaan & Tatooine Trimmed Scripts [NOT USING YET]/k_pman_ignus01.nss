//Ignus opens the hotel once the player becomes arbiter
void main()
{
    int nNth;
    object oDoor = GetObjectByTag("man26ac_door06",nNth);
    while (GetIsObjectValid(oDoor))
    {

        SetLocked(oDoor,FALSE);
        AssignCommand(oDoor,ActionOpenDoor(oDoor));
        nNth++;
        oDoor = GetObjectByTag("man26ac_door06",nNth);
    }
    //ActionPauseConversation();
    //ActionOpenDoor(oDoor);
    //ActionResumeConversation();
}
