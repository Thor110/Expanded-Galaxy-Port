int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("MAN_SWOOPR_DONE");
    if (iResult)
        SetGlobalBoolean("MAN_SWOOPR_DONE", FALSE);

    return iResult;
}
