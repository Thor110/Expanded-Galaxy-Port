// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_lev"
#include "k_inc_generic"

void CS_Stun(object oNPC) {
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectCutSceneParalyze(), oNPC, 0.0);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectVisualEffect(VFX_DUR_HOLD, FALSE), oNPC, 0.0);
}

void main() {
	
	object oEntering = GetEnteringObject();
	object oDoor;
	int nCnt;
	object oBarrier;
	
	if (GetTag(oEntering) == "darthmalak400" && !UT_GetTalkedToBooleanFlag(OBJECT_SELF))
		{
			AssignCommand(oEntering, GN_SetSpawnInCondition(SW_FLAG_RESISTANCES_APPLIED, FALSE));
			
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, TRUE);
			
			Db_PostString("ENDING FIGHT", 5, 5, 5.0);
			
			SignalEvent(oEntering, EventUserDefined(4000));
			
			oDoor = GetObjectByTag("lev40_blastdoorb", 0);
			AssignCommand(oDoor, ActionCloseDoor(oDoor));
			SetLocked(oDoor, TRUE);
			
			oDoor = GetObjectByTag("lev40_blastdoora", 0);
			SetLocked(oDoor, FALSE);
			
			oDoor = GetObjectByTag("lev40_blastdoorc", 0);
			SetLocked(oDoor, FALSE);
			
			oDoor = GetObjectByTag("lev40_blastdoorh", 0);
			SetLocked(oDoor, FALSE);
			
			oDoor = GetObjectByTag("lev40_blastdoori", 0);
			SetLocked(oDoor, FALSE);
			
			AssignCommand(GetFirstPC(), ClearAllEffects());
			CS_Stun(GetObjectByTag("carth", 0));
			CS_Stun(GetObjectByTag("bastila", 0));
			
			nCnt = 0;
			
			while (GetIsObjectValid(oBarrier = GetObjectByTag("lev40_barrier", nCnt)))
				{
					DestroyObject(oBarrier, 0.0, TRUE, 0.0);
					
					nCnt++;
				}
		}
}
