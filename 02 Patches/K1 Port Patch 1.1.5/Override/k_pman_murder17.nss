int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_REPSPYC_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_REPSPYC_DONE", TRUE);

    return iResult;
}
