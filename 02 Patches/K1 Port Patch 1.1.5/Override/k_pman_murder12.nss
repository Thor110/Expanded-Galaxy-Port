// player is a famous swoop rider
// AND
// player has not talked to ignus before (MAN_IGNUSF_DONE)

int StartingConditional()
{
    int iResult;

    iResult = FALSE;
    if (iResult)
        SetGlobalBoolean("MAN_IGNUSF_DONE", TRUE);

    return iResult;
}
