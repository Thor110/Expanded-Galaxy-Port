int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("MAN_TYVARKT_DONE");
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
