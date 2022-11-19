int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHSMF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHSMF_DONE", TRUE);

    return iResult;
}
