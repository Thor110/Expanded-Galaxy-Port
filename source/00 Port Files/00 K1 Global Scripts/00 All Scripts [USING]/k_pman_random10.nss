int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_PLANET_PLOT") < 4) && (GetGlobalNumber("MAN_RANDOM") > 4));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
