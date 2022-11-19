//:: k_ptat_beenkash
/*
     The player knows about the slavers on Kashyyyk.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if (GetGlobalBoolean("G_KashyyykSlaver") == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
