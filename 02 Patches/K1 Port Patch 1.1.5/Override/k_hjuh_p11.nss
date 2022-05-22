// on unknown world
// after driving off bastila

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIP_STATE") == 10) && (GetGlobalNumber("K_CURRENT_PLANET") == 45) && (GetGlobalNumber("G_FinalChoice") == 2));
    if (iResult)
        SetGlobalNumber("G_JUHANIP_STATE", 11);

    return iResult;
}
