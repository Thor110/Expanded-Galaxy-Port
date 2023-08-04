int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") == 2) && (GetGlobalNumber("DAN_RICK_STATE") == 2) && (GetGlobalNumber("DAN_IDROID_STATE") == 1));
    if (iResult)
        SetGlobalNumber("DAN_IDROID_STATE", 2);

    return iResult;
}
