int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("K_XOR_AMBUSH") == 1);
    if (iResult)
        DelayCommand(2.0, SetGlobalNumber("K_XOR_AMBUSH", 2));

    return iResult;
}
