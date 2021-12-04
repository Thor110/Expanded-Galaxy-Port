int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_DAKOTA_STATE") == 2);

    return iResult;
}
