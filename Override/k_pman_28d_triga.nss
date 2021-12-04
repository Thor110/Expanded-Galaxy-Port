//:: k_pman_28d_triga
/*

*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_man"
void main()
{

   object oEnter = GetEnteringObject();
   if(GetIsPC(oEnter) &&
      UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01) == FALSE)
    {
        UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01,TRUE);
       // location lLoc = GetLocation(GetObjectByTag("man28_wp_seabeast"));
       // object oBeast = CreateObject(OBJECT_TYPE_CREATURE,"man28_seabeast",lLoc);
        SetCustomToken(15,IntToString(0));
        SetCustomToken(16,IntToString(0));
    }
}

