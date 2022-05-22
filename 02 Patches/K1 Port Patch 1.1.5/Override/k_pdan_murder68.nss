int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_BOLOOK_STATE") == 4);

    return iResult;
}
