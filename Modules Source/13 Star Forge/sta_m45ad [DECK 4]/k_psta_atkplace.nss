#include "k_inc_utility"

void main() {
	int nDrain = SW_PLOT_BOOLEAN_02;
	int nFree = SW_PLOT_BOOLEAN_03;
	object oInvis = GetObjectByTag("sta_invis_camera", 0);
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	object oCaster = GetLastSpellCaster();
	int nMaxFP = GetMaxForcePoints(oCaster);
	int nCurFP = GetCurrentForcePoints(oCaster);
	if (GetFactionEqual(OBJECT_SELF, oInvis))
	{
		ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_NEUTRAL);
		DestroyObject(oDrain);
		if (!IsDark())
		{
			PlayAnimation(ANIMATION_PLACEABLE_OPEN);
			UT_SetPlotBooleanFlag(OBJECT_SELF, nFree, TRUE);
		}
		else
		{
			PlayAnimation(ANIMATION_PLACEABLE_DEACTIVATE);
			UT_SetPlotBooleanFlag(OBJECT_SELF, nDrain, TRUE);
		}
		DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_IMP_SUPPRESS_FORCE), oCaster));
		DelayCommand(0.4, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHealForcePoints(nMaxFP - nCurFP), oCaster));
	}
}
