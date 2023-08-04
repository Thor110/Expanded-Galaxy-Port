int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BOLOOK_STATE") == 0);

    return iResult;
}
