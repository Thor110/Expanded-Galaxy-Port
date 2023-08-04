int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("Lev_maldream")==TRUE &&
               GetGlobalBoolean("G_Juhani_RevTalk")==FALSE;
           return iResult;
}
