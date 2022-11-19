//:: k_pman_tatracery
/*
     The player has not raced once on Tatooine
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if ((GetGlobalNumber("tat_RaceComplete") == 0) &&
        (GetGlobalBoolean("tat_LostLastRace") == FALSE))
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


