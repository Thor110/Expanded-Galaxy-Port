//:: k_act_caloatt
/*
     Calo and his two
     capering buddies will
     attack the party.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    int nIdx = 0;
    object oThug1 = GetObjectByTag("CaloThug", nIdx);

    while(GetIsObjectValid(oThug1) || nIdx < 5)
    {
        if(GetIsObjectValid(oThug1))
        {
            ChangeToStandardFaction(oThug1, STANDARD_FACTION_HOSTILE_1);
            DelayCommand(0.5, AssignCommand(oThug1, ClearAllActions()));
            DelayCommand(0.5, AssignCommand(oThug1, GN_DetermineCombatRound()));
        }
        nIdx++;
        oThug1 = GetObjectByTag("CaloThug", nIdx);
    }
    ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
    DelayCommand(0.5, ClearAllActions());
    DelayCommand(0.5, GN_DetermineCombatRound());
}
