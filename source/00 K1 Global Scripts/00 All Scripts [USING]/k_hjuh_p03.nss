// after 2 starmaps

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 2) && (GetGlobalNumber("K_STAR_MAP") >= 20));
    if (iResult)
        SetGlobalNumber("G_JUHANIP_STATE", 3);

    return iResult;
}
