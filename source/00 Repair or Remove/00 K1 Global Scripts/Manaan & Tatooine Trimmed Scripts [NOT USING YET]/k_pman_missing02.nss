int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_DUANF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_DUANF_DONE", TRUE);

    return iResult;
}
