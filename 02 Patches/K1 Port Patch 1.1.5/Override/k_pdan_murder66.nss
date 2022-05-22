int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BOLOOK_STATE") == 2);

    return iResult;
}
