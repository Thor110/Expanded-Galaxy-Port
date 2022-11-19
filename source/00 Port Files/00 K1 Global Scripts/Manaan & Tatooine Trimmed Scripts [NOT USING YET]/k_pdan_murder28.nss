int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_RICKARDF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_RICKARDF_DONE", TRUE);

    return iResult;
}
