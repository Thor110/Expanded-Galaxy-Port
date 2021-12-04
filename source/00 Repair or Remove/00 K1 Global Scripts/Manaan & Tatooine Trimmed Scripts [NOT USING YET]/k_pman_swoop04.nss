int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("MAN_HUKTAL_DONE");
    if (iResult)
        SetGlobalBoolean("MAN_HUKTAL_DONE", FALSE);

    return iResult;
}
