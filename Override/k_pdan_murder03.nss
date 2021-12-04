int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_HAND_STATE") != GetGlobalNumber("DAN_RICK_STATE"));

    return iResult;
}
