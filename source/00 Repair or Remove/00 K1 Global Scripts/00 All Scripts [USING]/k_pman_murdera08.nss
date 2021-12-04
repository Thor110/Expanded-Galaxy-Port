int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_ARBITER_DONE") == FALSE);

    return iResult;
}
