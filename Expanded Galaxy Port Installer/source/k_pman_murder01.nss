int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_DAKOTAF_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("MAN_DAKOTAF_DONE", TRUE);

    return iResult;
}
