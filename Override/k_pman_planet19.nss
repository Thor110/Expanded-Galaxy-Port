int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("MAN_PORTF_DONE") == FALSE) && (GetGlobalBoolean("MAN_PORT_ZONE") == TRUE));
    if (iResult)
        SetGlobalBoolean("MAN_PORTF_DONE", TRUE);

    return iResult;
}
