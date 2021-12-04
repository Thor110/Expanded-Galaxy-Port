//:: k_act_walkways2
/*
    walk waypoints
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_generic"
#include "k_inc_debug"

void main()
{
    GN_SetSpawnInCondition(SW_FLAG_WAYPOINT_DEACTIVATE, FALSE);
    ClearAllActions();
    DelayCommand(1.0, GN_WalkWayPoints());
}

