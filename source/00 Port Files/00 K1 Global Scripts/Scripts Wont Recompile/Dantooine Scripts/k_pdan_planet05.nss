int StartingConditional()
{
    int iResult;

    iResult = (IsNPCPartyMember(NPC_BASTILA));
    if (iResult)
    {
        SetGlobalBoolean("DAN_PLAINS_DONE", TRUE);
        SetGlobalNumber("DAN_BASTILA_ZONE", 1);
    }

    return iResult;
}

