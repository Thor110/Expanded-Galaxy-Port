// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void RunToTarget(object oTarget) {
	Db_PostString("MOVING-" + GetTag(OBJECT_SELF) + "-" + GetTag(oTarget), 5, 5, 5.0);
	ClearAllActions();
	TAR_PlotMoveObject(oTarget, TRUE);
}

void NPCsRun() {
	object oPlc;
	object oWP;
	int nCnt = 0;
	
	while (GetIsObjectValid(oPlc = GetObjectByTag("VulkarPool", nCnt)) && nCnt < 3)
		{
			oWP = GetObjectByTag("tar10_wppool" + IntToString(nCnt), 0);
			
			DelayCommand(nCnt * 1.0, AssignCommand(oPlc, RunToTarget(oWP)));
			
			nCnt++;
		}
}

void ApplyVFX(string sTag, float fDist, int bForce) {
	object oPlc = GetObjectByTag(sTag, 0);
    
	if (GetIsObjectValid(oPlc))
		{
			effect eEffect1 = EffectVisualEffect(VFX_FNF_GRENADE_ION, FALSE);
			effect eEffect2 = EffectVisualEffect(VFX_PRO_LIGHTNING_L, FALSE);
			effect eEffect3 = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oPlc, BODY_NODE_CHEST, FALSE);
			effect eEffect4;
			object oNPC = GetNearestObject(OBJECT_TYPE_CREATURE, oPlc, 1);
			int nCnt = 1;
			int nDam = 1000;
			float fDelay = 0.3;
			
			AssignCommand(oPlc, ActionPlayAnimation(ANIMATION_PLACEABLE_OPEN, 1.0, 0.0));
			DelayCommand(0.3, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eEffect1, GetLocation(oPlc), 0.0));
			
			while (GetIsObjectValid(oNPC) && GetDistanceBetween(oNPC, oPlc) <= fDist)
				{
					if (bForce == TRUE || GetIsEnemy(oNPC, GetFirstPC()))
						{
							eEffect4 = EffectDamage(nDam, DAMAGE_TYPE_ELECTRICAL, DAMAGE_POWER_NORMAL);
							
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect4, oNPC, 0.0));
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eEffect3, oNPC, 1.0));
							DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eEffect2, oNPC, 1.0));
							
							fDelay = fDelay + 0.17;
						}
					
					nCnt++;
					
					oNPC = GetNearestObject(OBJECT_TYPE_CREATURE, oPlc, nCnt);
				}
			
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DROID_KILL, FALSE), oPlc, 0.0);
		}
}

void main() {
	
	ActionPauseConversation();
	
	ActionWait(1.5);
	
	ActionDoCommand(ApplyVFX("Xterminal", 10.0, TRUE));
	
	ActionWait(1.0);
	
	ActionDoCommand(NPCsRun());
	
	ActionWait(5.0);
	
	ActionResumeConversation();
}
