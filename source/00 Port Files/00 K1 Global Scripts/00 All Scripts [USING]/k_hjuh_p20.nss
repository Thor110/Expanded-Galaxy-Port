// first time after Korriban

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("T_JUHANIKD") == TRUE) && (GetGlobalBoolean("T_JUHANIKF") == FALSE));
    if (iResult)
        SetGlobalBoolean("T_JUHANIKF", TRUE);

    return iResult;
}
