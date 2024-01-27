// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_unk"

void main() {
	
	UNK_SetRedRakataHostile();
	
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan02", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan02", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan05", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan05", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan03", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan04", GetLocation(GetObjectByTag("spawn1", 0)), FALSE);
	
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan02", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan02", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan05", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan05", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan03", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan04", GetLocation(GetObjectByTag("spawn2", 0)), FALSE);
	
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), GN_DetermineCombatRound());
	AssignCommand(GetObjectByTag("unk41_redrak2", 0), GN_DetermineCombatRound());
	AssignCommand(GetObjectByTag("unk41_redrak3", 0), GN_DetermineCombatRound());
	AssignCommand(GetObjectByTag("unk41_redrak4", 0), GN_DetermineCombatRound());
	
	AssignCommand(GetObjectByTag("unk41_redrak5", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_redrak5", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("wp_01_03", 0)), TRUE));
	
	int nCnt;
	object oRak;
	
	nCnt = 0;
	
	while (GetIsObjectValid(oRak = GetObjectByTag("unk41_redrakata", nCnt)))
		{
			AssignCommand(oRak, GN_DetermineCombatRound());
			
			nCnt++;
		}
	
	SetAreaUnescapable(TRUE);
}
