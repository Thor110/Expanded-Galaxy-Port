int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 7) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")) && (GetGlobalBoolean("LEV_MALDREAM") == TRUE));

    return iResult;
}
