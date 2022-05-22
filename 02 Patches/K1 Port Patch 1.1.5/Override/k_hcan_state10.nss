int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_CAND_STATE") == 9) && (GetGlobalNumber("K_CURRENT_PLANET") == 50));

    return iResult;
}
