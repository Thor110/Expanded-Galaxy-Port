// DeNCS failed to decompile. Manual reconstruction. Bytecode match for main function and added subroutine, mismatch in include functions.
// Used a Star Forge include that does not exist in the shipped game files.

#include "k_inc_generic"

void CaptiveFaction(int nFaction) {
	
	int nCnt = 1;
	object oCaptive;
	object oDrain;
	
	while (nCnt < 9)
		{
			oCaptive = GetObjectByTag("sta_plc_captive" + IntToString(nCnt));
			oDrain = GetNearestObjectByTag("sta_malak_drain", oCaptive);
			
			if (GetName(oDrain) == IntToString(nCnt))
				{
					ChangeToStandardFaction(oCaptive, nFaction);
				}
			
			nCnt = nCnt + 1;
		}
}

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oPC = GetFirstPC();
	
	SetGlobalBoolean("STA_MALAK_DRAIN", FALSE);
	
	AssignCommand(oMalak, ClearAllActions());
	
	ChangeToStandardFaction(oMalak, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oMalak, DelayCommand(0.5, GN_DetermineCombatRound(oPC)));
	
	DestroyObject(GetNearestObjectByTag("sta_malak_drain", oMalak, 1), 0.0, FALSE, 0.0);
	DestroyObject(GetNearestObjectByTag("sta_malak_trig", oMalak, 1), 0.0, FALSE, 0.0);
	
	AssignCommand(GetArea(OBJECT_SELF), DelayCommand(0.3, CaptiveFaction(STANDARD_FACTION_HOSTILE_1)));
	
	AssignCommand(OBJECT_SELF, DelayCommand(0.1, DestroyObject(GetNearestObjectByTag("sta_jedi_conv", oMalak, 1))));
}
