int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 2) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")));

    return iResult;
}
