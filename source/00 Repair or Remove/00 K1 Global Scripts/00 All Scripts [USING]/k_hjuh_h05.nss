// after 1 additional level

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIH_STATE") == 4) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")));
    if (iResult)
    {
        SetGlobalNumber("G_JUHANIH_STATE", 5);
        SetGlobalNumber("T_LEVH", GetGlobalNumber("T_LEVH") + 1);
    }

    return iResult;
}
