int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_INTERR_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_INTERR_DONE", TRUE);

    return iResult;
}
