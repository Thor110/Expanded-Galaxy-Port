int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 1) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")));

    return iResult;
}
