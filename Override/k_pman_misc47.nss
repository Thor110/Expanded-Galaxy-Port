int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHSC_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHSC_DONE", TRUE);

    return iResult;
}
