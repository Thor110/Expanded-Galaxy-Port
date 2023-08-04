int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_YORTALC_DONE") == FALSE) && (GetGlobalBoolean("Kas_ChuunderDead") == TRUE));
    if (iResult)
        SetGlobalBoolean("MAN_YORTALC_DONE", TRUE);

    return iResult;
}
