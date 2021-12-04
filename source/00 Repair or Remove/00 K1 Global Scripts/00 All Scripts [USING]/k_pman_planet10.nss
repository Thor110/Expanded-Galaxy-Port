int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEB_STATE") == 2);

    return iResult;
}
