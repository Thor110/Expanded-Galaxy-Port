int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("LEV_MALDREAM") == TRUE) && (GetGlobalBoolean("T_CANDR") == FALSE));
    if (iResult)
        SetGlobalBoolean("T_CANDR", TRUE);

    return iResult;
}
