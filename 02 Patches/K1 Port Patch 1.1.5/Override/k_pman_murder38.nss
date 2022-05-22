int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("MAN_MURDER_PLOT");

    iResult = ((t > 0) && (t < 3));

    return iResult;
}
