//:: k_hzal_beenkashy
/*
     The player knows about the slavers on Kashyyyk.
*/
//:: Created By: Lukas Kristjanson
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

