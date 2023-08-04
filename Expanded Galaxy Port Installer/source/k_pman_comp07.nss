int StartingConditional()
{
    int bFound;
    int nNth = 0;
    object oDroid = GetObjectByTag("man28aa_turret01",nNth);
    while(GetIsObjectValid(oDroid) && bFound == FALSE)
    {
        if(GetStandardFaction(oDroid) != STANDARD_FACTION_NEUTRAL)
        {
            bFound = TRUE;
        }
        nNth++;
        oDroid = GetObjectByTag("man28aa_turret01",nNth);
    }
    return bFound;
}
