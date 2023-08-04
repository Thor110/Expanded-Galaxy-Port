//:: k_pman_tatracery
/*
     The player raced at least once on Tatooine
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if ((GetGlobalNumber("tat_RaceComplete") > 0) ||
        (GetGlobalBoolean("tat_LostLastRace") == TRUE))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

