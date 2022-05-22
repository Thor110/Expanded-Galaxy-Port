int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_RANDOM") == 7) && (GetGlobalNumber("man_ManaanRaceState") == 3));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
