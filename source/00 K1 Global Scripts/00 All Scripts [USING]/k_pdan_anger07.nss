int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_LIED_DONE") == FALSE);

    return iResult;
}
