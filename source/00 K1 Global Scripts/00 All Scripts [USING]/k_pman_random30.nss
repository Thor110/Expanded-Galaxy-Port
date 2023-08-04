int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("MAN_RANDOM") == 3) || (GetGlobalNumber("MAN_RANDOM") == 4)) && (GetGlobalNumber("KOR_FINAL_TEST") > 3));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
