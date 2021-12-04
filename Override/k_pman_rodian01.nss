int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_RODIAN_PLOT") == 1) && (GetGlobalBoolean("MAN_RODIANF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_RODIANF_DONE", TRUE);

    return iResult;
}
