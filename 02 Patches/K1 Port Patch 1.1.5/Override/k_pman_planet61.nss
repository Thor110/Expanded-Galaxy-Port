int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_PERS_DONE") == TRUE) && (GetGlobalNumber("MAN_THRESHOLD") > 9));

    return iResult;
}
