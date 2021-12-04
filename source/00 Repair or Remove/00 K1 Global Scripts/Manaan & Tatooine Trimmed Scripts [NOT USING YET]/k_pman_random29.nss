int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("MAN_RANDOM") == 1) || (GetGlobalNumber("MAN_RANDOM") == 2)) && (GetGlobalNumber("MAN_PLANET_PLOT") == 4));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
