int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(4) == FALSE) && (GetGlobalBoolean("MAN_SUNRYF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_SUNRYF_DONE", TRUE);

    return iResult;
}
