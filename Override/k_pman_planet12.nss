int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEB_STATE") == 4);
    return iResult;
}
