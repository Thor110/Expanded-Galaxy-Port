int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") == 4) && (GetGlobalNumber("DAN_RICK_STATE") == 4) && (GetGlobalNumber("DAN_IDROID_STATE") == 3));
    if (iResult)
        SetGlobalNumber("DAN_IDROID_STATE", 4);

    return iResult;
}
