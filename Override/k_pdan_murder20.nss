int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_HANDONF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_HANDONF_DONE", TRUE);

    return iResult;
}
