int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("G_CAND_STATE") == 5) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC"))) || ((GetGlobalNumber("G_CAND_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")) && (GetGlobalBoolean("G_CAND_THING") == FALSE)));

    return iResult;
}
