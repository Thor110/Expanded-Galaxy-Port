int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_TORTB_STATE") == 0) || (GetGlobalNumber("MAN_TORTB_STATE") == 1) || (GetGlobalNumber("MAN_TORTB_STATE") == 2) || (GetGlobalNumber("MAN_TORTB_STATE") == 3));

    return iResult;
}
