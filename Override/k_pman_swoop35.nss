// player has won a race on Manaan
// and
// MAN_SITHSFR_DONE == FALSE

int StartingConditional()
{
    int iResult;

    iResult = FALSE;
    if (iResult)
        SetGlobalBoolean("MAN_SITHSFR_DONE", TRUE);

    return iResult;
}
