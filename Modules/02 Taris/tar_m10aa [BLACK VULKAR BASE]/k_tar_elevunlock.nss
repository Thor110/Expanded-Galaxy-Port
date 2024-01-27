// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_tar"

void main() {
	
	int nCost;
	
	nCost = UT_DeterminesItemCost(8, SKILL_COMPUTER_USE);
	
	int nCnt;
	object oTurret;
	
	UT_RemoveComputerSpikes(nCost);
	
	UT_SetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_DEACTIVATE_TURRETS, TRUE);
	UT_SetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_DEACTIVATE_DROIDS, TRUE);
	SetGlobalNumber("Tar_VulkarElevator", 1);
	
	nCnt = 0;
	
	while (GetIsObjectValid(oTurret = GetObjectByTag("tar10_thermturret", nCnt)))
		{
			ChangeToStandardFaction(oTurret, STANDARD_FACTION_NEUTRAL);
			DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_LIGHTNING_S, FALSE), oTurret, 0.0));
			
			nCnt++;
		}
	
	ActionPauseConversation();
	
	ActionWait(5.0);
	
	ActionResumeConversation();
}
