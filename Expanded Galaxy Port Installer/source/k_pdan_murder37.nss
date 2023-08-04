int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_IDROIDF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_IDROIDF_DONE", TRUE);

    return iResult;
}
