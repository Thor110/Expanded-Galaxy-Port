// Causes shasa to initiate with the player
#include "k_inc_man"
void main()
{
 /*   if(GetGlobalBoolean("MAN_SITHBASE_SEALED") == FALSE)
    {
        ChangeToStandardFaction(GetObjectByTag("man27_sithdip"),STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(GetObjectByTag("pman_sithwara"),STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(GetObjectByTag("pman_sithwarb"),STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(GetObjectByTag("pman_sithward"),STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(GetObjectByTag("pman_sithwarc"),STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(GetObjectByTag("man27_sthlieu"),STANDARD_FACTION_HOSTILE_1);


        AssignCommand(GetObjectByTag("man27_sithdip"),GN_DetermineCombatRound());
        AssignCommand(GetObjectByTag("pman_sithwara"),GN_DetermineCombatRound());
        AssignCommand(GetObjectByTag("pman_sithwarb"),GN_DetermineCombatRound());
        AssignCommand(GetObjectByTag("pman_sithwarc"),GN_DetermineCombatRound());
        AssignCommand(GetObjectByTag("pman_sithward"),GN_DetermineCombatRound());
        AssignCommand(GetObjectByTag("man27_sthlieu"),GN_DetermineCombatRound());
    }*/
    DelayCommand(10.0f,SignalEvent(OBJECT_SELF,EventUserDefined(20)));
}
