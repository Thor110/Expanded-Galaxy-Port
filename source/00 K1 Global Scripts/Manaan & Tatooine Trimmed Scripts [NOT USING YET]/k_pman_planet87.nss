int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_REPTECH1_DONE") == FALSE);

    return iResult;
}
