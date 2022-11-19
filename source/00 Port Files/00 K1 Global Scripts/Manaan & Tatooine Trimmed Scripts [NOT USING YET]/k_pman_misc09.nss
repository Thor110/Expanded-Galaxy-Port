int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHB2_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHB2_DONE", TRUE);

    return iResult;
}
