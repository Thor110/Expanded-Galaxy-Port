int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_REPHACK_DONE") == TRUE) && (GetGlobalBoolean("MAN_REPTECH2_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("MAN_REPTECH2_DONE", TRUE);

    return iResult;
}
