// after 1 additional level
// before leviathan (starmaps < 4)

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIH_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVH")) && (GetGlobalNumber("K_STAR_MAP") < 40));
    if (iResult)
        SetGlobalNumber("G_JUHANIH_STATE", 7);

    return iResult;
}
