// if thep layer just won a pazaak game

int StartingConditional()
{
    int iResult, t;

    iResult = ((GetGlobalBoolean("G_Paz_JustPlayed") == TRUE) && (GetLastPazaakResult()==1));
    t = GetGlobalNumber("MAN_GONTON");
    SetGlobalNumber("MAN_GONTON", t + 1);

    return iResult;
}
