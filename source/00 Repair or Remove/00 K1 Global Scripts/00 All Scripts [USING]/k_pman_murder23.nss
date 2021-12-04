int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(4) == TRUE) && (GetGlobalBoolean("MAN_SUNRYJF_DONE") == FALSE));
    if (iResult)
    {
        SetGlobalBoolean("MAN_SUNRYJF_DONE", TRUE);
        SetGlobalBoolean("MAN_SUNRYF_DONE", TRUE);
    }

    return iResult;
}
