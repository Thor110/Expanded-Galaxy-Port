// gained 1 level since P4

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVP")));
    if (iResult)
    {
        SetGlobalNumber("G_JUHANIP_STATE", 6);
        SetGlobalNumber("T_LEVP", GetGlobalNumber("T_LEVP") + 1);
    }

    return iResult;
}
