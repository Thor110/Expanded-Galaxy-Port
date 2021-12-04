int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_ANGER") == 7) && (GetGlobalBoolean("DAN_ANGER7_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_ANGER7_DONE", TRUE);

    return iResult;
}
