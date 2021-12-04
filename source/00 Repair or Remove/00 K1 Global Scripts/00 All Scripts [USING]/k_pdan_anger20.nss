int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_JUHANIF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_JUHANIF_DONE", TRUE);

    return iResult;
}
