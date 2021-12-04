// if the player just lost a pazaak game

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("G_Paz_JustPlayed") == TRUE) && (GetLastPazaakResult()==0));

    return iResult;
}
