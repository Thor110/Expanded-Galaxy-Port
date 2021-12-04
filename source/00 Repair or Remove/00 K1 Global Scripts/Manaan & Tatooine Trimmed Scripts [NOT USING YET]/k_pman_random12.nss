int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_PLANET_PLOT") == 4) && (GetGlobalNumber("MAN_RANDOM") < 5));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
