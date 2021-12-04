int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHB1_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHB1_DONE", TRUE);

    return iResult;
}
