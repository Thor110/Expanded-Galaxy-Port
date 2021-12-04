// after gaining a level

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIH_STATE") == 2) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")));
    if (iResult)
    {
        SetGlobalNumber("G_JUHANIH_STATE", 3);
        SetGlobalNumber("T_LEVH", GetGlobalNumber("T_LEVH") + 1);
    }

    return iResult;
}
