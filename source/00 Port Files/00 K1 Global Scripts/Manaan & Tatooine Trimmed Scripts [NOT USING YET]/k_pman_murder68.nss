int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("MAN_SELWARDF_DONE") == FALSE);

    return iResult;
}
