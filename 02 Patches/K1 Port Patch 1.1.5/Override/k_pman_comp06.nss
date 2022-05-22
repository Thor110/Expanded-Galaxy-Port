int StartingConditional()
{
    int bFound;
    int nNth = 0;
    object oDroid = GetObjectByTag("man28_pdroid",nNth);
    while(GetIsObjectValid(oDroid) && bFound == FALSE)
    {
        if(GetStandardFaction(oDroid) != STANDARD_FACTION_NEUTRAL)
        {
            bFound = TRUE;
        }
        nNth++;
        oDroid = GetObjectByTag("man28_pdroid",nNth);
    }
    return bFound;
}
