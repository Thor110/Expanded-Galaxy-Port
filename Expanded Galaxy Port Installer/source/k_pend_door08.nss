void main()
{
    if(GetGlobalNumber("END_SITH_DEAD") >= 7)
    {
        SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
    }
    else
    {
        ActionStartConversation(GetPCSpeaker());
    }
}
