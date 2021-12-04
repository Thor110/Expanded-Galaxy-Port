int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_PORT_ZONE") == TRUE) && (GetGlobalNumber("MAN_PLANET_PLOT") == 4));

    return iResult;
}
