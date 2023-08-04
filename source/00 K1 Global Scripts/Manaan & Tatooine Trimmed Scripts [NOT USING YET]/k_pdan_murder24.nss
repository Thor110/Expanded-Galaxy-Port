int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_IDROID_STATE") == 3);

    return iResult;
}
