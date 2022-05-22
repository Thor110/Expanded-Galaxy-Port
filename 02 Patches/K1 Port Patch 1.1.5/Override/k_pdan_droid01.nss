int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_ELISEF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_ELISEF_DONE", TRUE);

    return iResult;
}
