//:: k_ptat_gammenemy
/*
     The Gammoreans become hostile to the player.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

void main()
{
    object oNarkal = GetObjectByTag("tat17_03narka_01");
    object oUgzak = GetObjectByTag("tat17_03ugzak_01");

    SetGammoreanGoneGlobal(TRUE);

    ChangeToStandardFaction(oNarkal, STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(oUgzak, STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);

    AssignCommand(oNarkal, GN_DetermineCombatRound());
    AssignCommand(oUgzak, GN_DetermineCombatRound());
    GN_DetermineCombatRound();
}
