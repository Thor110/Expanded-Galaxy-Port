int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_HAND_STATE") == 6);

    return iResult;
}
