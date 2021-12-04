int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_IDROID_STATE") == 4) && (GetGlobalBoolean("DAN_IDROIDB_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_IDROIDB_DONE", TRUE);

    return iResult;
}
