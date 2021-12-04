int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_VIGLO_STATE") == 3);

    return iResult;
}
