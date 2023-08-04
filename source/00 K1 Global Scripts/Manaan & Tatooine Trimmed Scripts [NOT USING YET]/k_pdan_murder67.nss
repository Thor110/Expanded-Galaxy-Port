int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BOLOOK_STATE") == 3);

    return iResult;
}
