int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("K_AT_EBON_HAWK") == FALSE) && (GetGlobalNumber("K_CURRENT_PLANET") != 40));

    return iResult;
}
