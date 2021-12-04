int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_IDROID_STATE") != GetGlobalNumber("DAN_HAND_STATE"));

    return iResult;
}
