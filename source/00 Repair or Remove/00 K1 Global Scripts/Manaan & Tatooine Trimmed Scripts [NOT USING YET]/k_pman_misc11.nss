int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SITHMEF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_SITHMEF_DONE", TRUE);

    return iResult;
}
