int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 7) && (GetGlobalBoolean("DAN_BOLOOKF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_BOLOOKF_DONE", TRUE);

    return iResult;
}
