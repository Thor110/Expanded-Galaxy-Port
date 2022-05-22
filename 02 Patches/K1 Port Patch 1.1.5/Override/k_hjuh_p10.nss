// on ebon hawk
// after leviathan

int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("G_JUHANIP_STATE") >= 6) && (GetGlobalNumber("G_JUHANIP_STATE") <= 10)) && (GetGlobalBoolean("K_AT_EBON_HAWK") == TRUE));

    return iResult;
}
