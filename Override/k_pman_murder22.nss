int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("MAN_MURDER_PLOT") == 3) || (GetGlobalNumber("MAN_MURDER_PLOT") == 4)) && (GetGlobalBoolean("MAN_SITHDIF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_SITHDIF_DONE", TRUE);

    return iResult;
}
