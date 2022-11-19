//:: k_pdan_romance01
/*
    This sets DAN_ROMANCE_PLOT to 1 to show that the
    player has been given the quest to find Shen Matale.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    if(GetGlobalNumber("DAN_ROMANCE_PLOT") < 1)
    {
        SetGlobalNumber("DAN_ROMANCE_PLOT", 1);
    }
}

