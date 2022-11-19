int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_LIEM_DONE") == FALSE);

    return iResult;
}
