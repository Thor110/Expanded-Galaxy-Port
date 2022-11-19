int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_REPACF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_REPACF_DONE", TRUE);

    return iResult;
}
