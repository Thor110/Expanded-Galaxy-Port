int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_MURDER_PLOT") == 5) && (GetGlobalBoolean("MAN_IGNUSL_DONE") == TRUE));

    return iResult;
}
