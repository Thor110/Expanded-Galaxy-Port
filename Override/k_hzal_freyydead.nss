//:: k_hzal_freyydead
/*
     Freyyrr has been killed on Kashyyyk
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if (GetGlobalBoolean("kas_FreyyrDead") == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}


