int StartingConditional()
{
    int iResult;
                                                                //Changed by Preston W - Was GetGlobalBoolean
    iResult = ((GetGlobalBoolean("K_AT_EBON_HAWK") == FALSE) && (GetGlobalNumber("K_CURRENT_PLANET") != 40) && (GetGlobalNumber("K_CURRENT_PLANET") != 50));

    return iResult;
}
