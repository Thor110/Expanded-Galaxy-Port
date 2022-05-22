int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("MAN_VIGLO_STATE") == 2);

    return iResult;
}
