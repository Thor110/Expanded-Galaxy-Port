int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_SHALASQ_DONE") == TRUE) && (GetGlobalNumber("MAN_MISSING_PLOT") < 3));

    return iResult;
}
