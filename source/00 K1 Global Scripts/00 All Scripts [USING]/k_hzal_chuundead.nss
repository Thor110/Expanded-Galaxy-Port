//:: k_hzal_chuundead
/*
     Chuundar has been killed on Kashyyyk
*/
//:: Created By: Lukas Kristjanson
//:: Copyright (c) 2002 Bioware Corp.

int StartingConditional()
{
    if (GetGlobalBoolean("kas_ChuundarDead") == TRUE)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

