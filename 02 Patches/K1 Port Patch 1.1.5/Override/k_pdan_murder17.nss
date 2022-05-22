int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") > 3) && (GetGlobalNumber("DAN_RICK_STATE") > 3) && (GetGlobalNumber("DAN_IDROID_STATE") > 3));

    return iResult;
}
