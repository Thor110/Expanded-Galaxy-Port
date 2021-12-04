int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHT_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHT_DONE", TRUE);

    return iResult;
}
