int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("G_CAND_STATE") == 0);

    return iResult;
}
