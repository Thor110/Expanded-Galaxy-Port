int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("K_XOR_AMBUSH") == 0);
    //if (iResult)
    //    SetGlobalNumber("K_XOR_AMBUSH", 1);

    return iResult;
}
