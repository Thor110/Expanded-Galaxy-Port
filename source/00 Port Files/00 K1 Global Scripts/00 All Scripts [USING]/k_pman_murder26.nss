int StartingConditional()
{
    int iResult;

    iResult = ((IsNPCPartyMember(4) == TRUE) && (GetGlobalBoolean("MAN_SUNRYJF_DONE") == TRUE) && (GetGlobalBoolean("MAN_SECRET_DONE") == FALSE));

    return iResult;
}
