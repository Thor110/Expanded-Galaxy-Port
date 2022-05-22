//:: k_pdan_romance32
/*
    Sets DAN_ROMANCE_PLOT to 2 to show that Rahasia has
    told the player about Shen.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

void main()
{
    if(GetGlobalNumber("DAN_ROMANCE_PLOT") < 2)
    {
        SetGlobalNumber("DAN_ROMANCE_PLOT", 2);
    }
}
