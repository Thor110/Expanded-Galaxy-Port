int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == FALSE) && (GetGlobalBoolean("MAN_SUNRYF_DONE") == TRUE) && (GetGlobalBoolean("MAN_SECRET_DONE") == FALSE));

    return iResult;
}
