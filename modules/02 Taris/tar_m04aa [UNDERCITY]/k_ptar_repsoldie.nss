// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"
#include "k_inc_generic"

void main() {
	
	object oEntering = GetEnteringObject();
	object oObj2;
	object oRak;
	int nCnt;
	
	if (GetTag(oEntering) == "REPUBLICSO")
		{
			AssignCommand(oEntering, ClearAllActions());
			AssignCommand(oEntering, GN_SetSpawnInCondition(SW_FLAG_AI_OFF, TRUE));
			
			nCnt = 0;
			
			while (GetIsObjectValid(oRak = GetObjectByTag("tar04_repsolrg", nCnt)))
				{
					AssignCommand(oRak, ActionAttack(oEntering, FALSE));
					
					nCnt++;
				}
		}
}
