int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("DAN_JEDI_PLOT");

    iResult = ((t > 1) && (t < 4) && (GetGlobalBoolean("DAN_JUHANIQ_DONE") == FALSE));

    return iResult;
}

