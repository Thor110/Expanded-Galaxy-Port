//:: k_pebn_swoop
/*
    Determines what planet the
    PC is currently on according
    to values set off of the
    galaxy map.

    Planet Order
        Endar Spire     5
        Taris           10
        Dantooine       15
        --Kashyyyk      20
        --Manaan        25
        --Korriban      30
        --Tatooine      35
        Leviathan       40
        Unknown World   45
        Star Forge      50
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
void CleanUpLocals(object oSwoop);
void main()
{
    object oSwoop = GetObjectByTag("pebn_swoopdrd");
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    if(nPlanet == 5)
    {
        StartNewModule("", "k_end_ebon_hawk_transition");  //Endar Spire
    }
    else if(nPlanet == 10)//TARIS
    {
        /*
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
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m02ab", "K_PTAR_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m02ab", "K_PTAR_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m02ac", "K_PTAR_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m02ac", "K_PTAR_SWOOP_POINT_04");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 5))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m03aa", "K_PTAR_SWOOP_POINT_05");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 6))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m03aa", "K_PTAR_SWOOP_POINT_06");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 7))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_07");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 8))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_08");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 9))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tar_m04aa", "K_PTAR_SWOOP_POINT_09");
        }
    }
    else if(nPlanet == 15)
    {
        /*
        Jedi Compound Courtyard   danm13      K_DAN_SWOOP_POINT_01
        Outside Jedi Compound     danm14aa    K_DAN_SWOOP_POINT_02
        Sandral Estate            danm14ad    K_DAN_SWOOP_POINT_03
        Matelle Estate            danm14ab    K_DAN_SWOOP_POINT_04
        Sacred Grove              danm14ac    K_DAN_SWOOP_POINT_05
        */
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("danm13", "K_DAN_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("danm14aa", "K_DAN_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("danm14ad", "K_DAN_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("danm14ab", "K_DAN_SWOOP_POINT_04");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 5))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("danm14ac", "K_DAN_SWOOP_POINT_05");
        }
    }
    else if(nPlanet == 20)//KASHYYYK
    {
        /*
        kas_m22ab  K_KAS_SWOOP_POINT_01 - Beginning of the Lower Forest
        kas_m23aa  K_KAS_SWOOP_POINT_02 - Entrance to the Village Rwookrrorro
        kas_m24aa  K_KAS_SWOOP_POINT_03 - Upper level of the Shadowlands
        kas_m25aa  K_KAS_SWOOP_POINT_04 - Lower level of the Shadowlands
        */
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("kas_m22ab", "K_KAS_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("kas_m23aa", "K_KAS_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("kas_m24aa", "K_KAS_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("kas_m25aa", "K_KAS_SWOOP_POINT_04");
        }
    }
    else if(nPlanet == 25)
    {
        /*
        Selcath Court             manm26aa    K_MAN_SWOOP_POINT_01
        Submarien Base            manm26ac    K_MAN_SWOOP_POINT_02
        Sith Base                 manm26ab    K_MAN_SWOOP_POINT_03
        Swoop Arena               manm26ab    K_MAN_SWOOP_POINT_04
        Hotel                     manm26ac    K_MAN_SWOOP_POINT_05
        */
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("manm26aa", "K_MAN_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("manm26ac", "K_MAN_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("manm26ab", "K_MAN_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("manm26ab", "K_MAN_SWOOP_POINT_04");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 5))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("manm26ac", "K_MAN_SWOOP_POINT_05");
        }
    }
    else if(nPlanet == 30)//KORRIBAN
    {
        /*
        Korriban, Dreshdae - Module korr_m33aa has K_KOR_SWOOP_POINT_01
        Korriban, Dreshdae - Module korr_m33ab has K_KOR_SWOOP_POINT_02
        Korriban, Shyrack Caverns - Module korr_m34aa has K_KOR_SWOOP_POINT_03
        Korriban, Valley of the Dark Lords - Module korr_m36aa has K_KOR_SWOOP_POINT_04.
        */
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("korr_m33aa", "K_KOR_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("korr_m33ab", "K_KOR_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("korr_m34aa", "K_KOR_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("korr_m36aa", "K_KOR_SWOOP_POINT_04");
        }
    }
    else if(nPlanet == 35)//TATOOINE
    {
        /*
        tat_m17aa  K_TAT_SWOOP_POINT_01 - Anchorhead, Hunter's Lodge
        tat_m17aa  K_TAT_SWOOP_POINT_02 - Anchorhead, Swoop Registration
        tat_m17aa  K_TAT_SWOOP_POINT_03 - Anchorhead, Cantina
        tat_m17aa  K_TAT_SWOOP_POINT_04 - Anchorhead, Droid Shop
        tat_m18ab  K_TAT_SWOOP_POINT_05 - Dune Sea, Anchorhead
        tat_m18ab  K_TAT_SWOOP_POINT_06 - Dune Sea, Sandperson Enclave
        tat_m18ab  K_TAT_SWOOP_POINT_07 - Dune Sea, Krayt Dragon Cave
        */
        if(UT_GetPlotBooleanFlag(oSwoop, 1))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_01");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 2))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_02");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 3))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_03");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 4))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m17aa", "K_TAT_SWOOP_POINT_04");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 5))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_05");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 6))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_06");
        }
        else if(UT_GetPlotBooleanFlag(oSwoop, 7))
        {
            CleanUpLocals(oSwoop);
            StartNewModule("tat_m18ab", "K_TAT_SWOOP_POINT_07");
        }
    }
    else if(nPlanet == 40)
    {
        StartNewModule("lev_40ac", "k_lev_ebon_hawk_transition"); // Leviathan
    }
    else if(nPlanet == 45)
    {
        StartNewModule("unk_m41aa", "k_unk_ebon_hawk_transition"); // Unknown World
    }
    else if(nPlanet == 50)
    {
        StartNewModule("", "k_sta_ebon_hawk_transition");  // Star Forge
    }
}
void CleanUpLocals(object oSwoop)
{
    int nIdx = 1;
    for(nIdx; nIdx <= 10; nIdx++)
    {
        UT_SetPlotBooleanFlag(oSwoop, nIdx, FALSE);
    }
}
