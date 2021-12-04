int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_MAND_STATE") == 0);

    return iResult;
}
