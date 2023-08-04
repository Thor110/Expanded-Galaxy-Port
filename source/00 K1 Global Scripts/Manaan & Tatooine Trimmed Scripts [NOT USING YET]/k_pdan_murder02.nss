int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_BOLOOKF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_BOLOOKF_DONE", TRUE);

    return iResult;
}
