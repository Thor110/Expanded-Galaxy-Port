int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_MURDER_PLOT") < 2) && (GetGlobalBoolean("MAN_ARBITER_DONE") == FALSE));

    return iResult;
}
