int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_HANDONG_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_HANDONG_DONE", TRUE);

    return iResult;
}
