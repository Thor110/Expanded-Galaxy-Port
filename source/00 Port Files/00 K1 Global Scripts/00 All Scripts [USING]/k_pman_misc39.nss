int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_YORTALF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_YORTALF_DONE", TRUE);

    return iResult;
}
