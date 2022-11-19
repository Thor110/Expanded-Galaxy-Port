//:: k_act_xoratt
/*
     Makes everyone from the
     Xor faction hostile
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_generic"

void main()
{
    AdjustReputation(GetPartyMemberByIndex(0), OBJECT_SELF, -100);
    AdjustReputation(GetPartyMemberByIndex(1), OBJECT_SELF, -100);
    AdjustReputation(GetPartyMemberByIndex(2), OBJECT_SELF, -100);
    
    DelayCommand(2.0, GN_DetermineCombatRound());

    int nCnt = 0;
    object oCrony = GetObjectByTag("G_THUG01", nCnt);
    while(GetIsObjectValid(oCrony))
    {
        DelayCommand(2.0, AssignCommand(oCrony, GN_DetermineCombatRound()));
        nCnt++;
        oCrony = GetObjectByTag("G_THUG01", nCnt);
    }
}
