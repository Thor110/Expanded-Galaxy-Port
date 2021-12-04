//:: k_swg_bastila28
/*
    This action script transports
    the PC and bastila to a deserted
    part of the ebon hawk . . .
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    object oPCWay = GetWaypointByTag("K_ROMANCE_PC");
    object oBastilaWay = GetWaypointByTag("K_ROMANCE_BASTILA");
    if(GetIsObjectValid(oPCWay) && GetIsObjectValid(oBastilaWay))
    {
        SetGlobalFadeIn(0.0, 2.0);
        object oPC = GetFirstPC();
        object oBast = GetObjectByTag("bastila");

        AssignCommand(oPC, JumpToObject(oPCWay, FALSE));
        AssignCommand(oBast, JumpToObject(oBastilaWay, FALSE));
    }
}
