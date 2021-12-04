void main() {
	string string1 = "man28_envirosuit";
	object object1 = GetLastUsedBy();
	if ((IsObjectPartyMember(object1) || GetIsPC(object1))) {
		object object3;
		object oNPC;
		int int3;
		int int4;
		int nPartyCount = GetPartyMemberCount();
		int4 = 0;
		while ((int4 < nPartyCount)) {
			oNPC = GetPartyMemberByIndex(int4);
			object3 = GetItemPossessedBy(oNPC, string1);
			if ((GetIsObjectValid(object3) == 0)) {
				CreateItemOnObject(string1, oNPC, 1);
				int3 = 1;
			}
			(int4++);
		}
		if (int3) {
			SetPlotFlag(OBJECT_SELF, 0);
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
	}
}

