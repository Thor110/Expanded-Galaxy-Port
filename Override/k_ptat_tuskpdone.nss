//:: k_ptat_tuskpdone
/*
     The player has completed the Sand People plot,
     eitehr by pacifying or killing the Sand People chieftain.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if (GetGlobalBoolean("tat_TuskenDead") == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

