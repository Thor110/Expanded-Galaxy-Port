// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_debug"
#include "k_inc_utility"

object oGetMalak = GetObjectByTag("sta_45darthMalak", 0);

#include "k_inc_generic"

void DrainCaptive() {
	object oCaptive = GetNearestObjectByTag("drainedcaptive", OBJECT_SELF, 1);
	
	SoundObjectPlay(oCaptive);
	DelayCommand(5.0, DestroyObject(oCaptive, 0.0, FALSE, 0.0));
}

void HealMalak() {
	int nMaxHP = GetMaxHitPoints(oGetMalak);
	int nCurHP = GetCurrentHitPoints(oGetMalak);
	int nMaxFP = GetMaxForcePoints(oGetMalak);
	int nCurFP = GetCurrentForcePoints(oGetMalak);
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nMaxHP - nCurHP), oGetMalak);
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(nMaxFP - nCurFP), oGetMalak);
}

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oPC = GetFirstPC();
	object oPCWP = GetObjectByTag("sta_pc_cutscene_jump", 0);
	object oDrain = GetNearestObjectByTag("sta_malak_drain", oMalak, 1);
	object oFace = GetNearestObjectByTag("sta_malak_facing", oDrain, 1);
	location lFace = GetLocation(oFace);
	//location lPCWP = GetLocation(oPCWP);
	string sName = GetName(oDrain);
	int nName = StringToInt(sName);
	int nCam1;
	int nCam2;
	object oCaptive;
	object oBuzz = GetNearestObjectByTag("buzzz", OBJECT_SELF, 1);
	
	if (nName == 1) 
		{
			nCam1 = 13;
			nCam2 = 14;
			oCaptive = GetObjectByTag("sta_plc_captive1", 0);
		}
		else if (nName == 2)
			{
				nCam1 = 23;
				nCam2 = 24;
				oCaptive = GetObjectByTag("sta_plc_captive2", 0);
			}
			else if (nName == 3)
				{
					nCam1 = 33;
					nCam2 = 34;
					oCaptive = GetObjectByTag("sta_plc_captive3", 0);
				}
				else if (nName == 4)
					{
						nCam1 = 43;
						nCam2 = 44;
						oCaptive = GetObjectByTag("sta_plc_captive4", 0);
					}
					else if (nName == 5)
						{
							nCam1 = 53;
							nCam2 = 54;
							oCaptive = GetObjectByTag("sta_plc_captive5", 0);
						}
						else if (nName == 6)
							{
								nCam1 = 63;
								nCam2 = 64;
								oCaptive = GetObjectByTag("sta_plc_captive6", 0);
							}
							else if (nName == 7)
								{
									nCam1 = 73;
									nCam2 = 74;
									oCaptive = GetObjectByTag("sta_plc_captive7", 0);
								}
								else
									{
										nCam1 = 83;
										nCam2 = 84;
										oCaptive = GetObjectByTag("sta_plc_captive8", 0);
									}
	
	int nJediLeft = GetGlobalNumber("K_END_JEDI_LEFT");
	int nJediUsed = GetGlobalNumber("K_END_MALAK_JEDI_USED");
	
	Db_PostString("Captives left = " + IntToString(nJediLeft - 1), 10, 10, 5.0);
	SetGlobalNumber("K_END_JEDI_LEFT", nJediLeft - 1);
	
	Db_PostString("Malak drained = " + IntToString(nJediUsed + 1), 12, 12, 5.0);
	SetGlobalNumber("K_END_MALAK_JEDI_USED", nJediUsed + 1);
	
	SoundObjectStop(oBuzz);
	
	UT_ActionPauseConversation(7.4);
	
	UT_SetTalkedToBooleanFlag(oCaptive, FALSE);
	
	AssignCommand(oMalak, GN_SetSpawnInCondition(SW_FLAG_RESISTANCES_APPLIED, FALSE));
	
	SetLockOrientationInDialog(oMalak, FALSE);
	AssignCommand(oMalak, ClearAllActions());
	AssignCommand(oMalak, SetFacingPoint(GetPosition(oCaptive)));
	
	SetDialogPlaceableCamera(nCam1);
	
	CancelCombat(oPC);
	CancelCombat(oMalak);
	
	DelayCommand(0.3, AssignCommand(oMalak, ClearAllActions()));
	
	DelayCommand(1.0, AssignCommand(oMalak, ActionCastFakeSpellAtObject(FORCE_POWER_DRAIN_LIFE, oCaptive, PROJECTILE_PATH_TYPE_DEFAULT)));
	DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectBeam(VFX_BEAM_DRAIN_LIFE, oMalak, BODY_NODE_HAND, FALSE), oCaptive, 0.8));
	DelayCommand(1.7, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DRAIN, FALSE), oCaptive, 0.0));
	DelayCommand(1.8, HealMalak());
	
	DelayCommand(2.3, SetDialogPlaceableCamera(nCam2));
	
	DelayCommand(3.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SCREEN_SHAKE, FALSE), GetFirstPC(), 0.0));
	
	DelayCommand(3.1, DrainCaptive());
	DelayCommand(3.1, AssignCommand(oCaptive, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE, 1.0, 0.0)));
	
	int nFlag = SW_PLOT_BOOLEAN_02;
	
	UT_SetPlotBooleanFlag(oCaptive, nFlag, TRUE);
	
	SetGlobalNumber("STA_MALAK_JEDI", 1);
}

