int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_IDROIDB_DONE") == TRUE);

    return iResult;
}
