int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 1) || ((GetGlobalNumber("G_JUHANIP_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVP"))));

    return iResult;
}
