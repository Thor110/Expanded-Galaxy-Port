int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEA_STATE") == 2);

    return iResult;
}
