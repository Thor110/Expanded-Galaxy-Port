// on leviathan

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("K_CURRENT_PLANET") == 40) && (GetGlobalNumber("G_JUHANIP_STATE") != 9));
    if (iResult)
        SetGlobalNumber("G_JUHANIP_STATE", 9);

    return iResult;
}
