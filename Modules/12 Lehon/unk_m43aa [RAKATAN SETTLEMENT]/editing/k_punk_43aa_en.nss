#include "k_inc_generic"
//#include "k_inc_unk"

void main() {
    string sTag = "unk43_onespk";
    string sMessage = "";
  if ((GetGlobalNumber("G_FinalChoice") > 0)) {
		SetMinOneHP(GetObjectByTag("unk43_redpris", 0), 0);
		ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk43_redpris", 0), 0.0);
		DelayCommand(0.5, AssignCommand(GetObjectByTag("unk43_redpris", 0), SetIsDestroyable(0, 0, 0)));
	}
	if (GetGlobalBoolean("UNK_BLACKHOSTILE")) {
		//UNK_SetBlackRakataHostile();
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW002", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW009", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW010", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW011", 0));
		SetAreaUnescapable(1);
		AssignCommand(GetObjectByTag("unk43_blk2", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after1", 0))));
		AssignCommand(GetObjectByTag("unk43_blk1", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after2", 0))));
	}
    
    /*if(GetIsObjectValid(GetObjectByTag(sTag)))
    {
        sMessage = "true";
    }
    else
    {
        sMessage = "false";
    }
    SendMessageToPC(GetFirstPC(), sMessage);
    SendMessageToPC(GetFirstPC(), "testing");*/
}