int StartingConditional()
{
    int iResult;

    iResult = TRUE;
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
