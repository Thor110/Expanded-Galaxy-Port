int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_LIVEA_STATE") == 1);

    return iResult;
}
