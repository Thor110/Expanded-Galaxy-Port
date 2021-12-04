int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") > 0) && (GetGlobalNumber("DAN_RICK_STATE") > 0));

    return iResult;
}
