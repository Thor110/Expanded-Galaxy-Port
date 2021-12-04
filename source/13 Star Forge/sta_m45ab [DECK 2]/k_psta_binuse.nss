void main() {
	object oSta_force_cage = GetObjectByTag("sta_force_cage", 0);
	if (GetLocked(OBJECT_SELF)) {
		ActionStartConversation(GetLastUsedBy(), "", 0, 0, 0, "", "", "", "", "", "");
	}
}

