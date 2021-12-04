int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 7) && (GetGlobalBoolean("DAN_IDROIDF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_IDROIDF_DONE", TRUE);

    return iResult;
}
