int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_AUTOGF_DONE") == TRUE) && (GetGlobalBoolean("MAN_AUTOF_DONE") == FALSE));

    return iResult;
}
