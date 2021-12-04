int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_MISSING_PLOT") == 3) && (GetGlobalBoolean("MAN_YORTALM_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_YORTALM_DONE", TRUE);

    return iResult;
}
