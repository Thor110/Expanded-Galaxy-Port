int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_SECRET_DONE") == TRUE) && (GetGlobalBoolean("MAN_CONFESS_DONE") == FALSE));

    return iResult;
}
