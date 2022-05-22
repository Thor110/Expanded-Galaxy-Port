int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_PLANET_PLOT") < 3) && (GetGlobalNumber("MAN_RANDOM") == (5 || 6)));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
