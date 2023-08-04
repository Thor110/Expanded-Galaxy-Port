/// Player has made their final choice

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("G_FinalChoice") == 1;

    return iResult;
}
