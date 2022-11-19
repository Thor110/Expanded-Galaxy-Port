int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_IDROID_STATE") == 0);

    return iResult;
}
