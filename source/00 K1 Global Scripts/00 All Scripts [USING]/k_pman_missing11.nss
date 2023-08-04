int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_DOOR_DONE") == TRUE) && (GetGlobalBoolean("MAN_OPEN_DONE") == FALSE));

    return iResult;
}
