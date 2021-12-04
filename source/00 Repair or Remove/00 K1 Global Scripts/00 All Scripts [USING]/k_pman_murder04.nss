int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_DAKOTA_STATE") == 3);

    return iResult;
}
