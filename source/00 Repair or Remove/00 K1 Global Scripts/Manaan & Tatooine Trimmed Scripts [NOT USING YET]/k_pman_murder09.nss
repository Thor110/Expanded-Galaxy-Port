int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == FALSE) && (GetGlobalBoolean("MAN_ELORAFN_DONE") == FALSE) && (GetGlobalNumber("MAN_MURDER_PLOT") == 1) && (GetGlobalBoolean("MAN_ELORAFT_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_ELORAFN_DONE", TRUE);

    return iResult;
}
