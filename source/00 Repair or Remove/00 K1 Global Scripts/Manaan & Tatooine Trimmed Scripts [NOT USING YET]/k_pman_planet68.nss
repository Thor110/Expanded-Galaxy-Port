int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_TORTB_STATE") == 0) || (GetGlobalNumber("MAN_TORTB_STATE") == 1) || (GetGlobalNumber("MAN_TORTB_STATE") == 4) || (GetGlobalNumber("MAN_TORTB_STATE") == 5));

    return iResult;
}
