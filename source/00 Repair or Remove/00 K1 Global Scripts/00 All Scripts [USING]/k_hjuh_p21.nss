int StartingConditional()
{
    int iResult;

    iResult = (((GetGlobalNumber("G_JUHANIH_STATE") == 2) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH"))) || ((GetGlobalNumber("G_JUHANIH_STATE") == 3) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH"))) || ((GetGlobalBoolean("T_JUHANIKD") == TRUE) && (GetGlobalBoolean("T_JUHANIKF") == FALSE)));

    return iResult;
}
