// after saying she lived on taris (H3)

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 3) && (GetGlobalNumber("G_JUHANIH_STATE") == 3));
    if (iResult)
    {
        SetGlobalNumber("G_JUHANIP_STATE", 4);
        SetGlobalNumber("T_LEVP", GetHitDice(GetFirstPC()));
    }

    return iResult;
}
