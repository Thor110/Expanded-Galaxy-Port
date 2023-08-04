//:: k_ptat_leave
/*
     This script places the player back on the Ebon Hawk.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oWaypoint = GetWaypointByTag("tat17_custompost");

    JumpToObject(oWaypoint);

    StartNewModule("ebo_m12aa","K_EBN_RAMP_ENTRANCE");
}
