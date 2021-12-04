int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == FALSE) && (GetGlobalNumber("MAN_MURDER_PLOT") == 1) && (GetGlobalBoolean("MAN_ELORAFT_DONE") == FALSE));

    return iResult;
}
