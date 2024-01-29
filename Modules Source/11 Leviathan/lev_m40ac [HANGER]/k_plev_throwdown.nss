// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_generic"
#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	
	SetGlobalBoolean("Lev_MalDream", TRUE);
	
	if (GetGlobalNumber("G_CAND_STATE") <= 5)
		{
			SetGlobalNumber("G_Cand_State", 5);
		}
	
	if (GetGlobalNumber("k_swg_carth") == 12 || GetGlobalNumber("k_swg_carth") == 13)
		{
			SetGlobalNumber("k_swg_carth", 14);
		}
	
	if (GetGlobalNumber("k_swg_carth") != 14)
		{
			SetGlobalNumber("k_swg_carth", 99);
		}
	
	object oWP;
	object oBarrier;
	int nCnt = 0;
	
	while (GetIsObjectValid(oWP = GetObjectByTag("lev40_wpbarrier", nCnt)))
		{
			oBarrier = CreateObject(OBJECT_TYPE_PLACEABLE, "lev40_barrier", GetLocation(oWP), FALSE);
			
			nCnt++;
		}
	
	ChangeToStandardFaction(oMalak, STANDARD_FACTION_HOSTILE_1);
	
	DelayCommand(1.0, AssignCommand(oMalak, GN_DetermineCombatRound(GetFirstPC())));
}
