int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEB_STATE") == 1);

    return iResult;
}
