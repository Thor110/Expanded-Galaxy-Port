#include "k_inc_utility"
#include "k_inc_debug"

void PlaySFX() {
	object oDrain = GetNearestObjectByTag("drainedcaptive", OBJECT_SELF, 1);
	SoundObjectPlay(oDrain);
	DelayCommand(5.0, DestroyObject(oDrain));
}

void main() {
	int nDrain = SW_PLOT_BOOLEAN_02;
	int nFree = SW_PLOT_BOOLEAN_03;
	int nKill = SW_PLOT_BOOLEAN_04;
	object oInvis = GetObjectByTag("sta_invis_camera", 0);
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	object oCaster = GetLastSpellCaster();
	int nLastPower = GetLastSpell();
	int nMaxHP = GetMaxHitPoints(oCaster);
	int nCurHP = GetCurrentHitPoints(oCaster);
	int nMaxFP = GetMaxForcePoints(oCaster);
	int nCurFP = GetCurrentForcePoints(oCaster);
	object oField1 = GetNearestObjectByTag("frcefldroom", OBJECT_SELF, 1);
	object oField2 = GetNearestObjectByTag("forcefield2", OBJECT_SELF, 1);
	object oBuzz = GetNearestObjectByTag("buzzz", OBJECT_SELF, 1);
	int nLeft = GetGlobalNumber("K_END_JEDI_LEFT");
	int nUsed = GetGlobalNumber("K_END_MALAK_JEDI_USED");
	if (GetFactionEqual(OBJECT_SELF, oInvis))
	{
		if (nLastPower == FORCE_POWER_DRAIN_LIFE || nLastPower == FORCE_POWER_DEATH_FIELD)
		{
			Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
			SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
			Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
			DestroyObject(oDrain);
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, FALSE);
			UT_SetPlotBooleanFlag(OBJECT_SELF, nFree, TRUE);
			DelayCommand(0.3, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
			DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(nMaxHP - nCurHP), oCaster));
			DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(nMaxFP - nCurFP), oCaster));
			SoundObjectStop(oBuzz);
			DelayCommand(0.5, CancelCombat(oCaster));
		}
		else if (nLastPower == FORCE_POWER_LIGHTNING || nLastPower == FORCE_POWER_CHOKE || nLastPower == FORCE_POWER_KILL || nLastPower == FORCE_POWER_FORCE_STORM)
		{
			Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
			SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
			Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
			DestroyObject(oDrain);
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, FALSE);
			DelayCommand(0.3, PlaySFX());
			DelayCommand(0.3, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
			DelayCommand(0.5, CancelCombat(oCaster));
			UT_SetPlotBooleanFlag(OBJECT_SELF, nKill, TRUE);
			SoundObjectStop(oBuzz);
		}
		else if (nLastPower == FORCE_POWER_DROID_DESTROY || nLastPower == FORCE_POWER_DROID_DISABLE || nLastPower == FORCE_POWER_FORCE_BREACH ||
			 nLastPower == FORCE_POWER_LIGHT_SABER_THROW || nLastPower == FORCE_POWER_LIGHT_SABER_THROW_ADVANCED)
		{
			DestroyObject(oDrain);
			if (!IsDark())
			{
				if (nLastPower == FORCE_POWER_LIGHT_SABER_THROW || nLastPower == FORCE_POWER_LIGHT_SABER_THROW_ADVANCED)
				{
					Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
					SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
					Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
					DelayCommand(1.2, PlaySFX());
					DelayCommand(1.2, PlayAnimation(ANIMATION_PLACEABLE_OPEN));
					UT_SetPlotBooleanFlag(OBJECT_SELF, nDrain, TRUE);
					DelayCommand(1.5, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_HEAL), oCaster));
					DelayCommand(1.2, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL));
					DelayCommand(1.6, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(nMaxFP - nCurFP), oCaster));
					DelayCommand(1.8, CancelCombat(oCaster));
				}
				else
				{
					Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
					SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
					Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
					DelayCommand(0.3, PlaySFX());
					DelayCommand(0.3, PlayAnimation(ANIMATION_PLACEABLE_OPEN));
					UT_SetPlotBooleanFlag(OBJECT_SELF, nDrain, TRUE);
					DelayCommand(0.3, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL));
					DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_HEAL), oCaster));
					DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(nMaxFP - nCurFP), oCaster));
					DelayCommand(0.5, CancelCombat(oCaster));
				}
			}
			else if (nLastPower == FORCE_POWER_LIGHT_SABER_THROW || nLastPower == FORCE_POWER_LIGHT_SABER_THROW_ADVANCED)
			{
				Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
				SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
				Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
				DelayCommand(1.2, PlaySFX());
				DelayCommand(1.2, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
				DelayCommand(1.2, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL));
				DelayCommand(1.5, CancelCombat(oCaster));
				UT_SetPlotBooleanFlag(OBJECT_SELF, nFree, TRUE);
			}
			else
			{
				Db_PostString("Captives left = " + IntToString(nLeft - 1), 10, 10, 5.0);
				SetGlobalNumber("K_END_JEDI_LEFT", nLeft - 1);
				Db_PostString("Malak drained = " + IntToString(nUsed), 12, 12, 5.0);
				DelayCommand(0.3, PlaySFX());
				DelayCommand(0.3, PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE));
				UT_SetPlotBooleanFlag(OBJECT_SELF, nFree, TRUE);
				DelayCommand(0.0, ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL));
				DelayCommand(0.5, CancelCombat(oCaster));
			}
			UT_SetTalkedToBooleanFlag(OBJECT_SELF, FALSE);
			SoundObjectStop(oField1);
			SoundObjectStop(oField2);
		}
		else
		{
			ClearAllEffects();
			CancelCombat(oCaster);
			ActionStartConversation(oCaster, "sta_capt_force", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE);
		}
	}
}
