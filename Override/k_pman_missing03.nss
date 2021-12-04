int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_DUAN_STATE") == 1);

    return iResult;
}
