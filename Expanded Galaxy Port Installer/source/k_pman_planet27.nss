int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_PLANET_PLOT") < 3) && (GetGlobalBoolean("MAN_NILKOQ_DONE") == TRUE));

    return iResult;
}
