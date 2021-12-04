int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") < 8) && (GetGlobalNumber("G_CAND_PLOT") > 1));

    return iResult;
}
