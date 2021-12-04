int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEA_STATE") == 0);

    return iResult;
}
