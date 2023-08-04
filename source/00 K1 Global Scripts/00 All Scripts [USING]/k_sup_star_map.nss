//:: k_sup_star_map
/*
     A generic script for the creation of star maps in each module
*/
//:: Created By: Cori May
//:: Copyright (c) 2002 Bioware Corp.
//:: Edited Sept 25, 2002: Preston W
/*  - Using UT_Create instead of Create.
    - Added the fifth starmap
*/
#include "k_inc_debug"

#include "k_inc_utility"
void main()
{
    object oPC = GetFirstPC();
    if(GetEnteringObject()==oPC &&
        UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01)==FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
        int nStar = GetGlobalNumber("K_STAR_MAP");
        location lWay = GetLocation(GetNearestObjectByTag("K_WAY_STAR_MAP"));
        if(nStar==0)
        {
            //some type of effect
            UT_CreateObject(OBJECT_TYPE_PLACEABLE,"k_star_map_01",lWay);
            //various journal entries
        }
        else if(nStar==10)
        {
            //some type of effect
            UT_CreateObject(OBJECT_TYPE_PLACEABLE,"k_star_map_02",lWay);
            //various journal entries
        }
        else if(nStar==20)
        {
            //some type of effect
            UT_CreateObject(OBJECT_TYPE_PLACEABLE,"k_star_map_03",lWay);
            //various journal entries
        }
        else if(nStar==30)
        {
            //some type of effect
            UT_CreateObject(OBJECT_TYPE_PLACEABLE,"k_star_map_04",lWay);
            //various journal entries
        }
        else if(nStar==40)
        {
            //some type of effect
            UT_CreateObject(OBJECT_TYPE_PLACEABLE,"k_star_map_05",lWay);
            //various journal entries
        }
        //nStar = nStar + 10;
        //SetGlobalNumber("K_STAR_MAP", nStar);
        //ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE);
    }
}
