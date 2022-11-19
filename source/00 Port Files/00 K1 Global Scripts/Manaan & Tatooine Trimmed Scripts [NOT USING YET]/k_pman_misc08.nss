int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHF_DONE", TRUE);

    return iResult;
}
