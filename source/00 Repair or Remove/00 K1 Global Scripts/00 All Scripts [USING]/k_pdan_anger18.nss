int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_ANGER") == 6) && (GetGlobalBoolean("DAN_ANGER6_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_ANGER6_DONE", TRUE);

    return iResult;
}
