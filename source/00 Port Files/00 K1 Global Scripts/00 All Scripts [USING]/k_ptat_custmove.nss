//:: k_ptat_custmove
/*
     This script has the customs official away from the ship.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oWaypoint = GetWaypointByTag("tat17_custompost");

    ActionMoveToObject(oWaypoint);

    SetFacing(GetFacing(oWaypoint));
}
