//:: k_sup_actmap
/*
    On Use script for the starmap
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    int nStar = GetGlobalNumber("K_STAR_MAP");
    nStar = nStar + 10;
    SetGlobalNumber("K_STAR_MAP",nStar);
    ActionPlayAnimation(ANIMATION_PLACEABLE_ACTIVATE);
    if(nStar == 50)
    {
        //Play the final starmap animation here.
    }
}
