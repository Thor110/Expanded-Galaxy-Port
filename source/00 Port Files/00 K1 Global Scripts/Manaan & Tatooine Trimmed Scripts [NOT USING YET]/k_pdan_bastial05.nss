int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_BASTILA_ZONE") == 5) && (IsNPCPartyMember(NPC_BASTILA)));
    if (iResult)
        SetGlobalBoolean("DAN_DOOR_DONE", TRUE);

    return iResult;
}

