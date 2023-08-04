int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_RANDOM") == 1);
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
