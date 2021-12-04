int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") == 1) && (GetGlobalNumber("DAN_RICK_STATE") == 1) && (GetGlobalNumber("DAN_IDROID_STATE") == 0));
    if (iResult)
        SetGlobalNumber("DAN_IDROID_STATE", 1);

    return iResult;
}
