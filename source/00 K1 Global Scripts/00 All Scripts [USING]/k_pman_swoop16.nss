// if player is sector champ
// and
// random < 5

int StartingConditional()
{
    int iResult;

    iResult = FALSE;
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
