int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_AUTOGM_DONE") == TRUE) && (GetGlobalBoolean("MAN_AUTOM_DONE") == FALSE));

    return iResult;
}
