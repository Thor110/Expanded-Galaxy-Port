int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 8) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")) && (GetGlobalNumber("K_CURRENT_PLANET") == 45));

    return iResult;
}
