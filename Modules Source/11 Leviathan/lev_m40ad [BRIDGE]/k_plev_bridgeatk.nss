// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_utility"
#include "k_inc_generic"

void main() {
	
	object nObject;
	int nCnt;
	
	nObject = GetObjectByTag("SaulKarath402", 0);
	
	ChangeToStandardFaction(nObject, STANDARD_FACTION_HOSTILE_1);
	DelayCommand(1.0, AssignCommand(nObject, GN_DetermineCombatRound()));
	
	nCnt = 0;
	
	while (GetIsObjectValid(nObject = GetObjectByTag("lev40_saulguard", nCnt)))
		{
			ChangeToStandardFaction(nObject, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(1.0, AssignCommand(nObject, GN_DetermineCombatRound()));
			
			nCnt++;
		}
	
	nCnt = 0;
	
	while (GetIsObjectValid(nObject = GetObjectByTag("lev40_sauljedi", nCnt)))
		{
			ChangeToStandardFaction(nObject, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(1.0, AssignCommand(nObject, GN_DetermineCombatRound()));
			
			nCnt++;
		}
	AddPartyMember(2, GetObjectByTag("Carth", 0));
	AddPartyMember(0, GetObjectByTag("Bastila", 0));
}
