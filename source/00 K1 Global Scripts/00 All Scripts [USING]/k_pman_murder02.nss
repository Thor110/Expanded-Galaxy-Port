int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_DAKOTA_STATE") == 1);

    return iResult;
}
