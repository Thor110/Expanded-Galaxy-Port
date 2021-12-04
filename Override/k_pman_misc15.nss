int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_VIGLO_STATE") == 1);

    return iResult;
}
