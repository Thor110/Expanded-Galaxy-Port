int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == TRUE) && (GetGlobalBoolean("MAN_SUNRYJF_DONE") == TRUE) && (GetGlobalBoolean("MAN_SECRET_DONE") == FALSE));

    return iResult;
}
