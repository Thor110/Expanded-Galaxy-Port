int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("MAN_RANDOM") == 5) && (GetGlobalBoolean("Kas_ChuundarDead") == TRUE));
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
