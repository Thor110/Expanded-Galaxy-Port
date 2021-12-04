//:: k_ptat_exitkrayt
/*
     The player cannot pass into the
     krayt dragon area without the map.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oParty1 = GetPartyMemberByIndex(0);
    object oParty2 = GetPartyMemberByIndex(1);
    object oParty3 = GetPartyMemberByIndex(2);
    object oWaypoint = GetWaypointByTag("tat18_leavekrayt");

    AssignCommand(oParty1, JumpToObject(oWaypoint));
    AssignCommand(oParty2, JumpToObject(oWaypoint));
    AssignCommand(oParty3, JumpToObject(oWaypoint));
}
