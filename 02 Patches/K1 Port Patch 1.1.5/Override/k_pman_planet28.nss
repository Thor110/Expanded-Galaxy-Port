int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_PLANET_PLOT") == 3) && (GetGlobalBoolean("MAN_GONTOD_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_GONTOD_DONE", TRUE);

    return iResult;
}
