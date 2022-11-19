int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEB_STATE") == 3);
    return iResult;
}
