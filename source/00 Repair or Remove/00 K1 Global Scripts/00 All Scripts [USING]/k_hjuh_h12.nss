int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("G_JUHANIH_STATE") == 1) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")) && (GetGlobalNumber("T_LEVH"))!=0)
                || ((GetGlobalNumber("G_JUHANIH_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH"))) || ((GetGlobalNumber("G_JUHANIH_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")) && (GetGlobalNumber("K_STAR_MAP") < 40)));

    return iResult;
}
