int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_MISSING_PLOT") == 3) && (GetGlobalBoolean("MAN_KILLS_DONE") == FALSE));

    return iResult;
}
