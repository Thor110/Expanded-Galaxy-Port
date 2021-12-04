// first time conversation after joining

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("G_JUHANIP_STATE") == 0);
    if (iResult)
    {
        SetGlobalNumber("G_JUHANIP_STATE", 1);
    }

    return iResult;
}
