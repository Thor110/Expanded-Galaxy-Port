int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_HAND_STATE") == 6) && (GetGlobalNumber("DAN_RICK_STATE") == 6) && (GetGlobalNumber("DAN_IDROID_STATE") == 5));
    if (iResult)
        SetGlobalNumber("DAN_IDROID_STATE", 6);

    return iResult;
}
