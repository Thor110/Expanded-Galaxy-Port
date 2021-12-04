// if player is sector champ
// and
// random > 4

int StartingConditional()
{
    int iResult;

    iResult = FALSE;
    if (iResult)
        SetGlobalNumber("MAN_RANDOM", d8());

    return iResult;
}
