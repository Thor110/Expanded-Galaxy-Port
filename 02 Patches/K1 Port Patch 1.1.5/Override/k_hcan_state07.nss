int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 6) && (GetHitDice(GetFirstPC()) > GetGlobalNumber("T_LEVC")) && (GetGlobalBoolean("G_CAND_THING") == FALSE));
    if (iResult)
        SetGlobalBoolean("G_CAND_THING", TRUE);

    return iResult;
}
