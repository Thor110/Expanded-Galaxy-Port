//:: k_ebn12_ctaris01
/*
     Checks if a specific area
     has been opened up to the
     swoop bike.

    Upper Taris Northeast                (tar_m02ab) K_PTAR_SWOOP_POINT_01
    Upper Taris Northwest                (tar_m02ab) K_PTAR_SWOOP_POINT_02
    Upper Taris Southeast                (tar_m02ac) K_PTAR_SWOOP_POINT_03
    Upper Taris Southwest                (tar_m02ac) K_PTAR_SWOOP_POINT_04
    Lower Taris East                     (tar_m03aa) K_PTAR_SWOOP_POINT_05
    Lower Taris West                     (tar_m03aa) K_PTAR_SWOOP_POINT_06
    Taris Undercity Village              (tar_m04aa) K_PTAR_SWOOP_POINT_07
    Taris Undercity Sewer Entrance North (tar_m04aa) K_PTAR_SWOOP_POINT_08
    Taris Undercity Sewer Entrance South (tar_m04aa) K_PTAR_SWOOP_POINT_09
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    if(GetGlobalBoolean("K_TAR_SWOOP_POINT_01"))
    {
        return TRUE;
    }
    return FALSE;
}

