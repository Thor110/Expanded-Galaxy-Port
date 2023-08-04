//

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("G_JUHANIP_STATE") == 1);
    if (iResult)
        SetGlobalNumber("G_JUHANIP_STATE", 2);

    return iResult;
}
