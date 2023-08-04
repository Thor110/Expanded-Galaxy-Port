int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_TYVARKT_DONE") == TRUE) && (GetGlobalNumber("MAN_RANDOM") > 5));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
