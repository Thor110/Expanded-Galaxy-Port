int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_IDROID_STATE") == 1);

    return iResult;
}
