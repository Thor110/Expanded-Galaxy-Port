int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(NPC_JOLEE) == FALSE) && (GetGlobalBoolean("MAN_SUNRYF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_SUNRYF_DONE", TRUE);

    return iResult;
}
