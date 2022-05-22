int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_IDROID_STATE") == 6);

    return iResult;
}
