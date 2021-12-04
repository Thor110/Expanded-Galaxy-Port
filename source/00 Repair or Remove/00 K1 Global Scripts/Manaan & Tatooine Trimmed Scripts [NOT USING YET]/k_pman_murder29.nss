int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == TRUE) && (GetGlobalBoolean("MAN_ELORAFT_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_ELORAFT_DONE", TRUE);

    return iResult;
}
