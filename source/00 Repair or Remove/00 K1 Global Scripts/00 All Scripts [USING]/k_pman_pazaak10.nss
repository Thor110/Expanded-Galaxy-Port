// if the player played Gonto 10 times, or took all his money

int StartingConditional()
{
    int iResult, t;

    iResult = ((GetGlobalBoolean("G_Paz_JustPlayed") == TRUE) && (GetLastPazaakResult()==1) && (GetGlobalNumber("MAN_GONTON") >= 9));
    t = GetGlobalNumber("MAN_GONTON");
    SetGlobalNumber("MAN_GONTON", t + 1);

    return iResult;
}
