int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_ANGER") == 5) && (GetGlobalBoolean("DAN_ANGER5_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_ANGER5_DONE", TRUE);

    return iResult;
}
