int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("G_CAND_STATE") == 1) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) || ((GetGlobalNumber("G_CAND_STATE") == 2) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) || ((GetGlobalNumber("G_CAND_STATE") == 3) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) || ((GetGlobalNumber("G_CAND_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))));

    return iResult;
}
