//:: k_act_bandatt
/*
     Bandon and his two
     capering buddies will
     attack the party.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    object oThug1 = GetObjectByTag("g_darkjedi02", 0);
    object oThug2 = GetObjectByTag("g_darkjedi02", 1);
    object oThug3 = GetObjectByTag("tat_bandon_thug1", 0);
    object oThug4 = GetObjectByTag("tat_bandon_thug2", 0);

    while(GetIsObjectValid(oThug1) ||
          GetIsObjectValid(oThug2) ||
          GetIsObjectValid(oThug3) ||
          GetIsObjectValid(oThug4))
    {
        if(GetIsObjectValid(oThug1))
        {
            Db_PostString("Jedi 1 Is Angry", 5, 10, 3.0);
            ChangeToStandardFaction(oThug1, STANDARD_FACTION_HOSTILE_1);
            DelayCommand(0.5, AssignCommand(oThug1, ClearAllActions()));
            DelayCommand(0.5, AssignCommand(oThug1, GN_DetermineCombatRound()));
        }
        if(GetIsObjectValid(oThug2))
        {
            Db_PostString("Jedi 1 Is Angry", 5, 12, 3.0);
            ChangeToStandardFaction(oThug2, STANDARD_FACTION_HOSTILE_1);
            DelayCommand(0.5, AssignCommand(oThug2, ClearAllActions()));
            DelayCommand(0.5, AssignCommand(oThug2, GN_DetermineCombatRound()));
        }
        if(GetIsObjectValid(oThug3))
        {
            Db_PostString("Jedi 1 Is Angry", 5, 12, 3.0);
            ChangeToStandardFaction(oThug3, STANDARD_FACTION_HOSTILE_1);
            DelayCommand(0.5, AssignCommand(oThug3, ClearAllActions()));
            DelayCommand(0.5, AssignCommand(oThug3, GN_DetermineCombatRound()));
        }
        if(GetIsObjectValid(oThug4))
        {
            Db_PostString("Jedi 1 Is Angry", 5, 12, 3.0);
            ChangeToStandardFaction(oThug4, STANDARD_FACTION_HOSTILE_1);
            DelayCommand(0.5, AssignCommand(oThug4, ClearAllActions()));
            DelayCommand(0.5, AssignCommand(oThug4, GN_DetermineCombatRound()));
        }
    }
    ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
    DelayCommand(0.5, ClearAllActions());
    DelayCommand(0.5, GN_DetermineCombatRound());
}
