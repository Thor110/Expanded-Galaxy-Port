// DeNCS failed to decompile. Manual reconstruction. 100% binary match.

#include "k_inc_unk"

void main() {
	
	object oGate;
	int nCnt;
	
	if (GetGlobalBoolean("UNK_BLACKHOSTILE") == TRUE || GetTag(GetLastUsedBy()) == "unk43_theone")
		{
			PlaySound("dr_lrk03_open");
			
			nCnt = 0;
			
			while (GetIsObjectValid(oGate = GetObjectByTag("unk43_cagegate", nCnt)))
				{
					AssignCommand(oGate, ActionOpenDoor(oGate));
					
					nCnt++;
				}
		}
		else
			{
				BarkString(OBJECT_INVALID, 42468);
			}
}
