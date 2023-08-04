int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") == 5) && (GetGlobalNumber("DAN_RICK_STATE") == 5) && (GetGlobalNumber("DAN_IDROID_STATE") == 4));
    if (iResult)
        SetGlobalNumber("DAN_IDROID_STATE", 5);

    return iResult;
}
