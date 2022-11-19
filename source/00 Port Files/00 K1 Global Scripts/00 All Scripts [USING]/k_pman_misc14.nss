int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_VIGLOF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_VIGLOF_DONE", TRUE);

    return iResult;
}
