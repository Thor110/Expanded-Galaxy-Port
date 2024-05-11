// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function, mismatch in include functions due to changes in k_inc_generic during development.

#include "k_inc_tar"
#include "k_inc_generic"

void main() {
	
	object oWPFlee = GetObjectByTag("tar03_wpflee", 0);
	object oVulkar;
	int nCnt;
	
	Db_PostString("BREJIK ATTACK", 5, 5, 5.0);
	
	AssignCommand(GetObjectByTag("anglu", 0), TAR_PlotMoveObject(oWPFlee, TRUE));
	AssignCommand(GetObjectByTag("tar03_doba", 0), TAR_PlotMoveObject(oWPFlee, TRUE));
	AssignCommand(GetObjectByTag("tar03_mechanic", 0), TAR_PlotMoveObject(oWPFlee, TRUE));
	AssignCommand(GetObjectByTag("tar03_phirk", 0), TAR_PlotMoveObject(oWPFlee, TRUE));
	AssignCommand(GetObjectByTag("raceannoun031", 0), TAR_PlotMoveObject(oWPFlee, TRUE));
	
	ChangeToStandardFaction(GetObjectByTag("redros", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("redros", 0), GN_DetermineCombatRound());
	
	ChangeToStandardFaction(GetObjectByTag("Brejik031", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("Brejik031", 0), ActionAttack(GetFirstPC(), FALSE));
	
	ChangeToStandardFaction(GetObjectByTag("tar03_bastguard", 0), STANDARD_FACTION_HOSTILE_1);
	AssignCommand(GetObjectByTag("tar03_bastguard", 0), GN_DetermineCombatRound());
	
	nCnt = 0;
	
	while (GetIsObjectValid(oVulkar = GetObjectByTag("tar03_vulkguard", nCnt)))
		{
			Db_PostString("GUARD HOSTILE", 5, 6 + nCnt, 5.0);
			
			ChangeToStandardFaction(oVulkar, STANDARD_FACTION_HOSTILE_1);
			AssignCommand(oVulkar, GN_DetermineCombatRound());
			
			nCnt++;
		}
	
	SignalEvent(GetObjectByTag("bastilla03", 0), EventUserDefined(3000));
}
