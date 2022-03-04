void main() {
	object object1 = GetItemPossessedBy(OBJECT_SELF, "datapad");
	if (((IsNPCPartyMember(2) && (!GetIsObjectValid(object1))) && (GetGlobalNumber("KOR_DANEL") == 3))) {
		object oCarth = GetObjectByTag("carth", 0);
		object oPC = GetFirstPC();
		AssignCommand(oPC, ActionStartConversation(oCarth, "kor35_carth", 0, 0, 0, "", "", "", "", "", ""));
	}
}

