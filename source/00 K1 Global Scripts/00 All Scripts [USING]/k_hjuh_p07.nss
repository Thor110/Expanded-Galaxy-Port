// 3 starmaps

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 6) && (GetGlobalNumber("K_STAR_MAP") > 20));
    if (iResult)
    {
        if (GetGlobalNumber("G_JUHANI_PLOT") == 4)
            SetGlobalNumber("G_JUHANIP_STATE", 10);
        else
            SetGlobalNumber("G_JUHANIP_STATE", 7);
    }

    return iResult;
}
