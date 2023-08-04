// has not talked about revan

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("T_JUHANIR_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("T_JUHANIR_DONE", TRUE);

    return iResult;
}
