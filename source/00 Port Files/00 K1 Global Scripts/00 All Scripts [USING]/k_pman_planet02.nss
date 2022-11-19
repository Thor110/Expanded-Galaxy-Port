int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_PLANET_PLOT") > 2) && (GetGlobalBoolean("MAN_ECHANIT_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_ECHANIT_DONE", TRUE);

    return iResult;
}
