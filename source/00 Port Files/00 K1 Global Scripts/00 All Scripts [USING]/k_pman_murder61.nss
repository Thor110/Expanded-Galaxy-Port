int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_ARBITER_DONE") && (GetGlobalBoolean("MAN_TYVARKM_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_TYVARKM_DONE", TRUE);

    return iResult;
}
