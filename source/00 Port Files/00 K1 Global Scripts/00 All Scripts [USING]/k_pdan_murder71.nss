int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_HANDONG_DONE") == FALSE);

    return iResult;
}
