// has not talked about revan

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("G_JUHANIH_STATE") < 7);
    if (iResult)
        SetGlobalBoolean("T_JUHANIR_DONE", TRUE);

    return iResult;
}
