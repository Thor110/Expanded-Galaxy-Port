// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_tat"

void main() {
	
	object oPM0 = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	object oFac = GetObjectByTag("tat18_tuskanfac", 0);
	
	AdjustReputation(oPM0, oFac, -100);
	
	SetGlobalBoolean("tat_TuskenSuit", FALSE);
	SetGlobalBoolean("tat_TuskenMad", TRUE);
	
	DestroySandpeopleDisguise();
	
	AssignCommand(oPM1, DelayCommand(1.0, GN_DetermineCombatRound()));
	AssignCommand(oPM2, DelayCommand(1.0, GN_DetermineCombatRound()));
	
	object oTusken = GetFirstObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
	
	while (GetIsObjectValid(oTusken) == TRUE)
		{
			
		}
	
	AssignCommand(oTusken, DelayCommand(1.0, GN_DetermineCombatRound()));
	
	oTusken = GetNextObjectInArea(OBJECT_SELF, OBJECT_TYPE_CREATURE);
}
