// after 1 additional level

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIH_STATE") == 5) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")));

    return iResult;
}
