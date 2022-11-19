int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BOLOOK_STATE") == 1);

    return iResult;
}
