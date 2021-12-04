int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_TORTA_STATE") == 0) || (GetGlobalNumber("MAN_TORTA_STATE") == 1) || (GetGlobalNumber("MAN_TORTA_STATE") == 4) || (GetGlobalNumber("MAN_TORTA_STATE") == 5));

    return iResult;
}
