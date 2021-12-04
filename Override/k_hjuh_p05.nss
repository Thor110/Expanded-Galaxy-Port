// after 2 interjections
// one time only
// after saying her parents were driven by mandalorians
// before leviathan

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("G_JUHANIC_NUM") >= 2) && (GetGlobalBoolean("T_JUHANIC") == FALSE) && (GetGlobalNumber("G_JUHANIH_STATE") >= 5) && (GetGlobalNumber("G_JUHANIP_STATE")< 9));
    if (iResult)
        SetGlobalBoolean("T_JUHANIC", TRUE);

    return iResult;
}
