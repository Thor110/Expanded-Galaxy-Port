#include "k_inc_generic"

void MakeHostile() {
	object oAreaObject;
	GN_PostString("SCANNING...", 5, 5, 5.0);
	SetGlobalBoolean("UNK_BLACKHOSTILE", 1);
	oAreaObject = GetFirstObjectInArea(OBJECT_INVALID, 1);
	GN_PostString("FOUND OBJ...", 5, 5, 5.0);
	while (GetIsObjectValid(oAreaObject)) {
		if ((((GetTag(oAreaObject) != "unk41_gizka") && (IsObjectPartyMember(oAreaObject) == 0)) && (GetTag(oAreaObject) != "unk43_redpris"))) {
			GN_PostString("IN LOOP...", 5, 5, 5.0);
			GN_PostString("RAKATA HOSTILE", 5, 5, 5.0);
			ChangeToStandardFaction(oAreaObject, 1);
			AssignCommand(oAreaObject, ClearAllActions());
			AssignCommand(oAreaObject, GN_DetermineCombatRound(OBJECT_INVALID));
		}
		oAreaObject = GetNextObjectInArea(OBJECT_INVALID, 1);
	}
}

void main() {
	if ((GetGlobalNumber("G_FinalChoice") > 0)) {
		SetMinOneHP(GetObjectByTag("unk43_redpris", 0), 0);
		ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk43_redpris", 0), 0.0);
		DelayCommand(0.5, AssignCommand(GetObjectByTag("unk43_redpris", 0), SetIsDestroyable(0, 0, 0)));
	}
	if (GetGlobalBoolean("UNK_BLACKHOSTILE")) {
		MakeHostile();
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW002", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW009", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW010", 0));
		SetEncounterActive(1, GetObjectByTag("G_UNKNOWNW011", 0));
		SetAreaUnescapable(1);
		AssignCommand(GetObjectByTag("unk43_blk2", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after1", 0))));
		AssignCommand(GetObjectByTag("unk43_blk1", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after2", 0))));
	}
}