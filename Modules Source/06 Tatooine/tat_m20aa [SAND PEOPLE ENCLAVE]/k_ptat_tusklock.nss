// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_treasure"
#include "k_inc_tat"

void main() {
	
	object oPC = GetFirstPC();
	object oFac = GetObjectByTag("tat18_tuskanfac", 0);
	
	if (GetIsEnemy(oPC, oFac) == FALSE && GetLocked(OBJECT_SELF) == FALSE)
		{
			ActionLockObject(OBJECT_SELF);
		}
		else if (GetIsEnemy(oPC, oFac) == TRUE && GetLocked(OBJECT_SELF) == TRUE)
			{
				ActionUnlockObject(OBJECT_SELF);
			}
	
	if (!UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			SWTR_PopulateTreasure(OBJECT_SELF, SWTR_TABLE_SANDPERSON_CONTAINER, 3, TRUE);
		}
}
