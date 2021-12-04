int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("DAN_MAND_STATE");

    iResult = ((t > 0) && (t < 6));

    return iResult;
}
