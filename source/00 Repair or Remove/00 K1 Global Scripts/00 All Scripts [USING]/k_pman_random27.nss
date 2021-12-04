int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_RANDOM") == 7);
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
