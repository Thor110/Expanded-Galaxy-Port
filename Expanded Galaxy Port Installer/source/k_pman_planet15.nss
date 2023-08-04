// if dantooine has been destroyed, one time only

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_PLANET_PLOT") == 3) && (GetGlobalBoolean("MAN_MERCD_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_MERCD_DONE", TRUE);

    return iResult;
}
